#include "simpleble/SimpleBLE.h"
#include <iostream>
#include <fstream>
#include <chrono>
#include <thread>

int main() {
    // Create an adapter and find devices
    auto adapter = SimpleBLE::Adapter::get_adapters().front();
    if (!adapter) {
        std::cerr << "No Bluetooth adapter found!" << std::endl;
        return -1;
    }

    std::cout << "Scanning for devices..." << std::endl;
    adapter->scan_for(5000); // 5 seconds scan

    SimpleBLE::Peripheral device;
    for (const auto& d : adapter->scan_get_results()) {
        std::cout << "Found device: " << d.identifier() << " [" << d.address() << "]" << std::endl;
        if (d.identifier().find("ELM327") != std::string::npos) {
            device = d;
            break;
        }
    }

    if (!device.is_connected()) {
        std::cout << "Connecting to device..." << std::endl;
        if (!device.connect()) {
            std::cerr << "Failed to connect!" << std::endl;
            return -1;
        }
    }
    std::cout << "Connected to " << device.identifier() << std::endl;

    // Open a file for logging
    std::ofstream log_file("bluetooth_data.csv", std::ios::app);
    log_file << "Timestamp,Data\n";

    // Set up continuous data reading
    device.notify([](std::string data) {
        // Get timestamp
        auto now = std::chrono::system_clock::now();
        auto timestamp = std::chrono::duration_cast<std::chrono::milliseconds>(
            now.time_since_epoch()
        ).count();

        // Log data
        log_file << timestamp << "," << data << "\n";
        log_file.flush(); // Ensure data is written immediately

        // Print to console
        std::cout << "Data: " << data << std::endl;
    });

    std::cout << "Listening for data. Press Ctrl+C to exit..." << std::endl;
    while (device.is_connected()) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    std::cout << "Device disconnected." << std::endl;
    log_file.close();
    return 0;
}
