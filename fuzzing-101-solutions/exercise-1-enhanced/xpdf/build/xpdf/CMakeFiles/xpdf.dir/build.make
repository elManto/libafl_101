# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build

# Include any dependencies generated for this target.
include xpdf/CMakeFiles/xpdf.dir/depend.make

# Include the progress variables for this target.
include xpdf/CMakeFiles/xpdf.dir/progress.make

# Include the compile flags for this target's objects.
include xpdf/CMakeFiles/xpdf.dir/flags.make

xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o: xpdf/CMakeFiles/xpdf.dir/flags.make
xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o: ../xpdf/PreScanOutputDev.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o -c /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PreScanOutputDev.cc

xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xpdf.dir/PreScanOutputDev.cc.i"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PreScanOutputDev.cc > CMakeFiles/xpdf.dir/PreScanOutputDev.cc.i

xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xpdf.dir/PreScanOutputDev.cc.s"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PreScanOutputDev.cc -o CMakeFiles/xpdf.dir/PreScanOutputDev.cc.s

xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.o: xpdf/CMakeFiles/xpdf.dir/flags.make
xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.o: ../xpdf/PSOutputDev.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.o"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xpdf.dir/PSOutputDev.cc.o -c /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PSOutputDev.cc

xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xpdf.dir/PSOutputDev.cc.i"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PSOutputDev.cc > CMakeFiles/xpdf.dir/PSOutputDev.cc.i

xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xpdf.dir/PSOutputDev.cc.s"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PSOutputDev.cc -o CMakeFiles/xpdf.dir/PSOutputDev.cc.s

xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.o: xpdf/CMakeFiles/xpdf.dir/flags.make
xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.o: ../xpdf/SplashOutputDev.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.o"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xpdf.dir/SplashOutputDev.cc.o -c /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/SplashOutputDev.cc

xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xpdf.dir/SplashOutputDev.cc.i"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/SplashOutputDev.cc > CMakeFiles/xpdf.dir/SplashOutputDev.cc.i

xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xpdf.dir/SplashOutputDev.cc.s"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/SplashOutputDev.cc -o CMakeFiles/xpdf.dir/SplashOutputDev.cc.s

xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.o: xpdf/CMakeFiles/xpdf.dir/flags.make
xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.o: ../xpdf/TextOutputDev.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.o"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xpdf.dir/TextOutputDev.cc.o -c /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/TextOutputDev.cc

xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xpdf.dir/TextOutputDev.cc.i"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/TextOutputDev.cc > CMakeFiles/xpdf.dir/TextOutputDev.cc.i

xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xpdf.dir/TextOutputDev.cc.s"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/TextOutputDev.cc -o CMakeFiles/xpdf.dir/TextOutputDev.cc.s

xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.o: xpdf/CMakeFiles/xpdf.dir/flags.make
xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.o: ../xpdf/ImageOutputDev.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.o"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xpdf.dir/ImageOutputDev.cc.o -c /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/ImageOutputDev.cc

xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xpdf.dir/ImageOutputDev.cc.i"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/ImageOutputDev.cc > CMakeFiles/xpdf.dir/ImageOutputDev.cc.i

xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xpdf.dir/ImageOutputDev.cc.s"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && /usr/local/bin/afl-clang-lto++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/ImageOutputDev.cc -o CMakeFiles/xpdf.dir/ImageOutputDev.cc.s

# Object files for target xpdf
xpdf_OBJECTS = \
"CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o" \
"CMakeFiles/xpdf.dir/PSOutputDev.cc.o" \
"CMakeFiles/xpdf.dir/SplashOutputDev.cc.o" \
"CMakeFiles/xpdf.dir/TextOutputDev.cc.o" \
"CMakeFiles/xpdf.dir/ImageOutputDev.cc.o"

# External object files for target xpdf
xpdf_EXTERNAL_OBJECTS = \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Annot.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Array.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFont.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFontTables.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Catalog.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/CharCodeToUnicode.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/CMap.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Decrypt.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Dict.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Error.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/FontEncodingTables.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Function.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Gfx.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/GfxFont.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/GfxState.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/GlobalParams.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/JArithmeticDecoder.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/JBIG2Stream.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/JPXStream.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Lexer.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Link.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/NameToCharCode.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Object.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Outline.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/OutputDev.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Page.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Parser.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/PDFDoc.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/PDFDocEncoding.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/PSTokenizer.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/SecurityHandler.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/Stream.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/UnicodeMap.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/UnicodeTypeTable.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf_objs.dir/XRef.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/FixedPoint.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/GHash.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/GList.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/GString.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/gfile.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/gmem.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/gmempp.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/goo/CMakeFiles/goo_objs.dir/parseargs.c.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/fofi/CMakeFiles/fofi_objs.dir/FoFiBase.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/fofi/CMakeFiles/fofi_objs.dir/FoFiEncodings.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/fofi/CMakeFiles/fofi_objs.dir/FoFiTrueType.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/fofi/CMakeFiles/fofi_objs.dir/FoFiType1.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/fofi/CMakeFiles/fofi_objs.dir/FoFiType1C.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/Splash.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashBitmap.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashClip.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFTFont.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFTFontEngine.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFTFontFile.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFont.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFontEngine.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFontFile.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashFontFileID.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashPath.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashPattern.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashScreen.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashState.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashXPath.cc.o" \
"/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/splash/CMakeFiles/splash_objs.dir/SplashXPathScanner.cc.o"

xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/PreScanOutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/PSOutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/SplashOutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/TextOutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/ImageOutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Annot.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Array.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFont.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFontTables.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Catalog.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/CharCodeToUnicode.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/CMap.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Decrypt.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Dict.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Error.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/FontEncodingTables.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Function.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Gfx.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/GfxFont.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/GfxState.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/GlobalParams.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/JArithmeticDecoder.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/JBIG2Stream.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/JPXStream.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Lexer.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Link.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/NameToCharCode.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Object.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Outline.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/OutputDev.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Page.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Parser.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/PDFDoc.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/PDFDocEncoding.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/PSTokenizer.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/SecurityHandler.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/Stream.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/UnicodeMap.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/UnicodeTypeTable.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf_objs.dir/XRef.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/FixedPoint.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/GHash.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/GList.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/GString.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/gfile.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/gmem.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/gmempp.cc.o
xpdf/libxpdf.a: goo/CMakeFiles/goo_objs.dir/parseargs.c.o
xpdf/libxpdf.a: fofi/CMakeFiles/fofi_objs.dir/FoFiBase.cc.o
xpdf/libxpdf.a: fofi/CMakeFiles/fofi_objs.dir/FoFiEncodings.cc.o
xpdf/libxpdf.a: fofi/CMakeFiles/fofi_objs.dir/FoFiTrueType.cc.o
xpdf/libxpdf.a: fofi/CMakeFiles/fofi_objs.dir/FoFiType1.cc.o
xpdf/libxpdf.a: fofi/CMakeFiles/fofi_objs.dir/FoFiType1C.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/Splash.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashBitmap.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashClip.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFTFont.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFTFontEngine.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFTFontFile.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFont.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFontEngine.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFontFile.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashFontFileID.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashPath.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashPattern.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashScreen.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashState.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashXPath.cc.o
xpdf/libxpdf.a: splash/CMakeFiles/splash_objs.dir/SplashXPathScanner.cc.o
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/build.make
xpdf/libxpdf.a: xpdf/CMakeFiles/xpdf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libxpdf.a"
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && $(CMAKE_COMMAND) -P CMakeFiles/xpdf.dir/cmake_clean_target.cmake
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xpdf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
xpdf/CMakeFiles/xpdf.dir/build: xpdf/libxpdf.a

.PHONY : xpdf/CMakeFiles/xpdf.dir/build

xpdf/CMakeFiles/xpdf.dir/clean:
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf && $(CMAKE_COMMAND) -P CMakeFiles/xpdf.dir/cmake_clean.cmake
.PHONY : xpdf/CMakeFiles/xpdf.dir/clean

xpdf/CMakeFiles/xpdf.dir/depend:
	cd /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/CMakeFiles/xpdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xpdf/CMakeFiles/xpdf.dir/depend

