# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.freetype.Debug:
/Users/radvani/Source/ViroFreetype/ios/build/Debug${EFFECTIVE_PLATFORM_NAME}/libfreetyped.a:
	/bin/rm -f /Users/radvani/Source/ViroFreetype/ios/build/Debug${EFFECTIVE_PLATFORM_NAME}/libfreetyped.a


PostBuild.freetype.Release:
/Users/radvani/Source/ViroFreetype/ios/build/Release${EFFECTIVE_PLATFORM_NAME}/libfreetype.a:
	/bin/rm -f /Users/radvani/Source/ViroFreetype/ios/build/Release${EFFECTIVE_PLATFORM_NAME}/libfreetype.a


PostBuild.freetype.MinSizeRel:
/Users/radvani/Source/ViroFreetype/ios/build/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfreetype.a:
	/bin/rm -f /Users/radvani/Source/ViroFreetype/ios/build/MinSizeRel${EFFECTIVE_PLATFORM_NAME}/libfreetype.a


PostBuild.freetype.RelWithDebInfo:
/Users/radvani/Source/ViroFreetype/ios/build/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfreetype.a:
	/bin/rm -f /Users/radvani/Source/ViroFreetype/ios/build/RelWithDebInfo${EFFECTIVE_PLATFORM_NAME}/libfreetype.a




# For each target create a dummy ruleso the target does not have to exist
