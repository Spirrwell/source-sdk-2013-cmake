# Source SDK 2013 MP - CMake
This project ports the buildsystem from VPC to CMake.

The layout of the CMake projects should be similar to that of VPC. Hopefully it should feel familiar even if you have no experience with CMake. The base scripts are in _cmake_scripts. Each project has its own corresponding .cmake file similar to VPC. 

Example: src/tier1/tier1.vpc -> src/tier1/tier1.cmake

The batch and shell scripts to generate projects now call CMake instead and place project files in a created "build" directory. If you're comfortable with CMake, you don't have to rely on these at all and can use your favorite IDE's CMake integration.

If your folder structure for SDK2013 is different, you should only have to modify SRCDIR and GAMEDIR in the CMakeLists.txt file if you need to move things around.

## Compiler Support

### Windows
By default, this targets C++14 since modern VS defaults to C++14 anyway. VS2019 and VS2022 are known to build, but this is untested with older versions.

### Linux
GCC 5 or greater should also work fine. This repo should build out of the box with the Steam Runtime Soldier container. Scout will require a bit of tinkering to update CMake and switch to GCC 5 or higher.

### macOS
This should also build on macOS. Just note that for Xcode, only versions 9.4.1 and earlier support the i386 architecture. If building from a different IDE, or command line, you shouldn't have to worry about this. In fact, the project generation scripts should output Makefiles by default.

Building with macOS 10.13.6 (High Sierra) is recommended. Please check this project out if you're interested in a macOS container: https://github.com/sickcodes/Docker-OSX

## Credits

I'd like to thank JJL772, OzxyBox, and those behind the Source-PlusPlus repo which includes Joshua Ashton, SCell555, and Gocnak.

The modified particles.lib that allows modern VS to build came from Source-PlusPlus: https://github.com/Joshua-Ashton/Source-PlusPlus

JJL772 has a repo which helped me with the ABI difference issues on newer GCC versions: https://github.com/JJL772/source-sdk-2013

OzxyBox has a Source SDK repo which supports VS2022 which I referenced for help a few times. This CMake port is not NEARLY as extensive as the changes here: https://github.com/ozxybox/source-mp13-vs2022
