## Building for iOS

1. Create a directory to store the build (e.g. ios-build)
2. CD into said directory
3. run cmake -D IOS_PLATFORM=OS -G Xcode ../freetype-2.9/
4. Open the created Xcodeproj and
    1. set the scheme to release
    2. change generate debug symbols to NO
    3. set deployment target to iOS 9.1
    4. set valid architectures to arm64 armv7 armv7s
    5. set architectures to "standard architectures"
    6. set enable bitcode to NO
    7. set "symbols hidden by default" to YES
    7. build
    8. output .a files are in Release-iphoneos directory
    9. include files are in the *top level* include directory *and* the build-ios/include directory. The config files are in the build-ios/include directory and have to be combined with the general includes from the top-level freetype directory
    
For simulator, run the simulator command instead for step 3:
    
cmake -D IOS_PLATFORM=SIMULATOR -G Xcode ../freetype-2.9
    
5. Generate headers:
    1. cd into bullet3-2.87
    2. cmake .
    3. make
    4. make install
    5. The headers will be in /usr/local/include/bullet
