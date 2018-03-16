## Building Freetype for Android

1. Create a directory for each platform
```
mkdir build
cd build
mdkdir arm64-v8a
mkdir armeabi-v7a
```

2. Run CMake

```
cmake ../../freetype-2.9 -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=[ANDROID VERSION] -DCMAKE_ANDROID_ARCH_ABI=[ARCH] -DCMAKE_ANDROID_NDK=[NDK_PATH]  -DBUILD_SHARED_LIBS:BOOL=true -DCMAKE_INSTALL_PREFIX=out -DWITH_PNG=OFF -DWITH_ZLIB=OFF
```
where:

[ARCH] is either ```armeabi-v7a``` or ```arm64-v8a```
[NDK_PATH] points to your NDK installation (for me: /Users/radvani/Library/Android/sdk/ndk-bundle )
[VERSION] indicates the android version (in general we've been using 23)

Filled in, it would look something like this
```
cmake ../../freetype-2.9 -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=23 -DCMAKE_ANDROID_ARCH_ABI=arm64-v8a -DCMAKE_ANDROID_NDK=/Users/radvani/Library/Android/sdk/ndk-bundle -DBUILD_SHARED_LIBS:BOOL=true -DCMAKE_INSTALL_PREFIX=out -DWITH_PNG=OFF -DWITH_ZLIB=OFF
```

3. Make and install
```
make && make install
```
The libs and include files will be in the build/[arch]/out directory```

4. Repeat for the next architecture


