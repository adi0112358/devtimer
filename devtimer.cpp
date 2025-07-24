#include <iostream>
#include <chrono>
#include <thread>

int main(int argc, char* argv[]) {
    if(argc < 4){
        std::cout << "Usage: devtimer start <time> <unit: sec|min>\n";
        return 1;
    }

    std::string command = argv[1];
    int time = std::stoi(argv[2]);
    std::string unit = argv[3];

    if(command == "start") {
        std::cout << "Timer started for " << time << " " << unit << "...\n";

        if(unit == "min") {
            std::this_thread::sleep_for(std::chrono::minutes(time));
        } else if(unit == "sec") {
            std::this_thread::sleep_for(std::chrono::seconds(time));
        } else {
            std::cout << "Invalid unit. Use 'sec' or 'min'.\n";
            return 1;
        }

        std::cout << "\aTime's up!\n";
    }

    return 0;
}
