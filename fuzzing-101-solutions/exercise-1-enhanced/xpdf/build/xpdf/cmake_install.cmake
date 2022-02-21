# Install script for directory: /home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/mantovan/Repositories/llvm-project/build/bin/llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libxpdf/lib" TYPE STATIC_LIBRARY FILES "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/xpdf/libxpdf.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libxpdf/include" TYPE FILE FILES
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/aconf-dj.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/aconf-win32.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/aconf.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/aconf2.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/build/aconf.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/fofi/FoFiBase.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/fofi/FoFiEncodings.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/fofi/FoFiTrueType.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/fofi/FoFiType1.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/fofi/FoFiType1C.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/FixedPoint.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/GHash.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/GList.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/GMutex.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/GString.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/gfile.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/gmem.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/gtypes.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/parseargs.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/vms_dirent.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/vms_sys_dirent.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/goo/vms_unix_time.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/Splash.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashBitmap.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashClip.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashErrorCodes.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFTFont.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFTFontEngine.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFTFontFile.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFont.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFontEngine.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFontFile.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashFontFileID.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashGlyphBitmap.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashMath.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashPath.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashPattern.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashScreen.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashState.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashT1Font.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashT1FontEngine.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashT1FontFile.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashTypes.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashXPath.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/splash/SplashXPathScanner.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Annot.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Array.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/BuiltinFont.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/BuiltinFontTables.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/CMap.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Catalog.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/CharCodeToUnicode.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/CharTypes.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/CompactFontTables.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/CoreOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Decrypt.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Dict.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Error.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/ErrorCodes.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/FontEncodingTables.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Function.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Gfx.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/GfxFont.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/GfxState.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/GlobalParams.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/ImageOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/JArithmeticDecoder.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/JBIG2Stream.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/JPXStream.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Lexer.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Link.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/NameToCharCode.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/NameToUnicodeTable.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Object.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Outline.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/OutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PDFCore.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PDFDoc.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PDFDocEncoding.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PSOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PSTokenizer.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Page.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Parser.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/PreScanOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/SecurityHandler.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/SplashOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Stream-CCITT.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/Stream.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/TextOutputDev.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/UTF8.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/UnicodeMap.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/UnicodeMapTables.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/UnicodeTypeTable.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XPDFApp.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XPDFCore.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XPDFTree.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XPDFTreeP.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XPDFViewer.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XRef.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/XpdfPluginAPI.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/about-text.h"
    "/home/mantovan/libafl_tests/fuzzing-101-solutions/exercise-1-enhanced/xpdf/xpdf/config.h"
    )
endif()

