#############################################################################
<<<<<<< HEAD
# Makefile for building: SDLtest
# Generated by qmake (3.0) (Qt 5.3.1)
# Project:  SDLtest.pro
# Template: app
# Command: /opt/Qt/5.3/gcc_64/bin/qmake -spec linux-clang -o Makefile SDLtest.pro
=======
# Makefile for building: bin/CardExample
# Generated by qmake (3.0) (Qt 5.3.2)
# Project:  CardExample.pro
# Template: app
# Command: /usr/bin/qmake-qt5 -spec linux-clang CONFIG+=debug -o Makefile CardExample.pro
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = clang
CXX           = clang++
<<<<<<< HEAD
DEFINES       = -DQT5BUILD -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -I/usr/local/include/SDL2 -D_REENTRANT -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/opt/Qt/5.3/gcc_64/mkspecs/linux-clang -I. -Iinclude -I/home/i7245660/NGL/include -I/opt/Qt/5.3/gcc_64/include -I/opt/Qt/5.3/gcc_64/include/QtGui -I/opt/Qt/5.3/gcc_64/include/QtCore -I.
LINK          = clang++
LFLAGS        = -ccc-gcc-name g++ -Wl,-rpath,/opt/Qt/5.3/gcc_64 -Wl,-rpath,/opt/Qt/5.3/gcc_64/lib
LIBS          = $(SUBLIBS) -L$(HOME)/NGL/lib -lSDL2_ttf -lSDL2_image -L/usr/local/lib -Wl,-rpath,/usr/local/lib -lSDL2 -L/opt/Qt/5.3/gcc_64/lib -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /opt/Qt/5.3/gcc_64/bin/qmake
=======
DEFINES       = -DQT_CORE_LIB
CFLAGS        = -std=c99 -g -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/usr/lib64/qt5/mkspecs/linux-clang -I. -Iinclude -isystem /usr/include/qt5 -isystem /usr/include/qt5/QtCore -I.
LINK          = clang++
LFLAGS        = -ccc-gcc-name g++
LIBS          = $(SUBLIBS) -lQt5Core -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt5
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
<<<<<<< HEAD
STRIP         = strip
=======
STRIP         = 
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = obj/

####### Files

<<<<<<< HEAD
SOURCES       = src/card.cpp \
		src/dealergui.cpp \
		src/element.cpp \
		src/elementmaker.cpp \
		src/hand.cpp \
		src/label.cpp \
		src/listmenu.cpp \
		src/main.cpp 
OBJECTS       = obj/card.o \
		obj/dealergui.o \
		obj/element.o \
		obj/elementmaker.o \
		obj/hand.o \
		obj/label.o \
		obj/listmenu.o \
		obj/main.o
DIST          = .qmake.cache \
		SDLtest.pro src/card.cpp \
		src/dealergui.cpp \
		src/element.cpp \
		src/elementmaker.cpp \
		src/hand.cpp \
		src/label.cpp \
		src/listmenu.cpp \
		src/main.cpp
QMAKE_TARGET  = SDLtest
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = SDLtest
=======
SOURCES       = src/examples/cardUsage.cpp \
		src/dealer/playingcard.cpp 
OBJECTS       = obj/cardUsage.o \
		obj/playingcard.o
DIST          = /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/clang.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-clang/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		CardExample.pro src/examples/cardUsage.cpp \
		src/dealer/playingcard.cpp
QMAKE_TARGET  = CardExample
DESTDIR       = bin/#avoid trailing-slash linebreak
TARGET        = bin/CardExample
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
<<<<<<< HEAD
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: SDLtest.pro .qmake.cache /opt/Qt/5.3/gcc_64/mkspecs/linux-clang/qmake.conf /opt/Qt/5.3/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/shell-unix.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/common/clang.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_enginio.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_websockets.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt/5.3/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/linux-clang/qmake.conf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/spec_post.prf \
		.qmake.cache \
		/opt/Qt/5.3/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/default_pre.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/qt.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/resources.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/moc.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/unix/opengl.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/unix/thread.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt/5.3/gcc_64/mkspecs/features/lex.prf \
		SDLtest.pro \
		/opt/Qt/5.3/gcc_64/lib/libQt5Gui.prl \
		/opt/Qt/5.3/gcc_64/lib/libQt5Core.prl
	$(QMAKE) -spec linux-clang -o Makefile SDLtest.pro
/opt/Qt/5.3/gcc_64/mkspecs/features/spec_pre.prf:
/opt/Qt/5.3/gcc_64/mkspecs/common/shell-unix.conf:
/opt/Qt/5.3/gcc_64/mkspecs/common/unix.conf:
/opt/Qt/5.3/gcc_64/mkspecs/common/linux.conf:
/opt/Qt/5.3/gcc_64/mkspecs/common/gcc-base.conf:
/opt/Qt/5.3/gcc_64/mkspecs/common/gcc-base-unix.conf:
/opt/Qt/5.3/gcc_64/mkspecs/common/clang.conf:
/opt/Qt/5.3/gcc_64/mkspecs/qconfig.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_core.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_declarative.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designer.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_enginio.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_enginio_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_gui.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_help.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimedia.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_network.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_nfc.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_positioning.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qml.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quick.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_script.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_script_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_scripttools.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sensors.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_serialport.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sql.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_svg.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkit.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_websockets.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_websockets_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_x11extras.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xml.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
/opt/Qt/5.3/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/opt/Qt/5.3/gcc_64/mkspecs/features/qt_functions.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/qt_config.prf:
/opt/Qt/5.3/gcc_64/mkspecs/linux-clang/qmake.conf:
/opt/Qt/5.3/gcc_64/mkspecs/features/spec_post.prf:
.qmake.cache:
/opt/Qt/5.3/gcc_64/mkspecs/features/exclusive_builds.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/default_pre.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/resolve_config.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/default_post.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/warn_on.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/qt.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/resources.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/moc.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/unix/opengl.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/unix/thread.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/testcase_targets.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/exceptions.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/yacc.prf:
/opt/Qt/5.3/gcc_64/mkspecs/features/lex.prf:
SDLtest.pro:
/opt/Qt/5.3/gcc_64/lib/libQt5Gui.prl:
/opt/Qt/5.3/gcc_64/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec linux-clang -o Makefile SDLtest.pro
=======
	@test -d bin/ || mkdir -p bin/
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: CardExample.pro /usr/lib64/qt5/mkspecs/linux-clang/qmake.conf /usr/lib64/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib64/qt5/mkspecs/common/shell-unix.conf \
		/usr/lib64/qt5/mkspecs/common/unix.conf \
		/usr/lib64/qt5/mkspecs/common/linux.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib64/qt5/mkspecs/common/clang.conf \
		/usr/lib64/qt5/mkspecs/qconfig.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib64/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib64/qt5/mkspecs/features/qt_config.prf \
		/usr/lib64/qt5/mkspecs/linux-clang/qmake.conf \
		/usr/lib64/qt5/mkspecs/features/spec_post.prf \
		/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib64/qt5/mkspecs/features/default_pre.prf \
		/usr/lib64/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib64/qt5/mkspecs/features/default_post.prf \
		/usr/lib64/qt5/mkspecs/features/warn_on.prf \
		/usr/lib64/qt5/mkspecs/features/qt.prf \
		/usr/lib64/qt5/mkspecs/features/resources.prf \
		/usr/lib64/qt5/mkspecs/features/moc.prf \
		/usr/lib64/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib64/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib64/qt5/mkspecs/features/exceptions.prf \
		/usr/lib64/qt5/mkspecs/features/yacc.prf \
		/usr/lib64/qt5/mkspecs/features/lex.prf \
		CardExample.pro \
		/usr/lib64/libQt5Core.prl
	$(QMAKE) -spec linux-clang CONFIG+=debug -o Makefile CardExample.pro
/usr/lib64/qt5/mkspecs/features/spec_pre.prf:
/usr/lib64/qt5/mkspecs/common/shell-unix.conf:
/usr/lib64/qt5/mkspecs/common/unix.conf:
/usr/lib64/qt5/mkspecs/common/linux.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base.conf:
/usr/lib64/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib64/qt5/mkspecs/common/clang.conf:
/usr/lib64/qt5/mkspecs/qconfig.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qml_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_qmltest_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quick_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickparticles_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_quickwidgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib64/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib64/qt5/mkspecs/features/qt_functions.prf:
/usr/lib64/qt5/mkspecs/features/qt_config.prf:
/usr/lib64/qt5/mkspecs/linux-clang/qmake.conf:
/usr/lib64/qt5/mkspecs/features/spec_post.prf:
/usr/lib64/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib64/qt5/mkspecs/features/default_pre.prf:
/usr/lib64/qt5/mkspecs/features/resolve_config.prf:
/usr/lib64/qt5/mkspecs/features/default_post.prf:
/usr/lib64/qt5/mkspecs/features/warn_on.prf:
/usr/lib64/qt5/mkspecs/features/qt.prf:
/usr/lib64/qt5/mkspecs/features/resources.prf:
/usr/lib64/qt5/mkspecs/features/moc.prf:
/usr/lib64/qt5/mkspecs/features/unix/thread.prf:
/usr/lib64/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib64/qt5/mkspecs/features/exceptions.prf:
/usr/lib64/qt5/mkspecs/features/yacc.prf:
/usr/lib64/qt5/mkspecs/features/lex.prf:
CardExample.pro:
/usr/lib64/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec linux-clang CONFIG+=debug -o Makefile CardExample.pro
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d

qmake_all: FORCE

dist: 
<<<<<<< HEAD
	@test -d obj/SDLtest1.0.0 || mkdir -p obj/SDLtest1.0.0
	$(COPY_FILE) --parents $(DIST) obj/SDLtest1.0.0/ && $(COPY_FILE) --parents include/card.h include/dealergui.h include/element.h include/elementmaker.h include/hand.h include/label.h include/listmenu.h obj/SDLtest1.0.0/ && $(COPY_FILE) --parents src/card.cpp src/dealergui.cpp src/element.cpp src/elementmaker.cpp src/hand.cpp src/label.cpp src/listmenu.cpp src/main.cpp obj/SDLtest1.0.0/ && (cd `dirname obj/SDLtest1.0.0` && $(TAR) SDLtest1.0.0.tar SDLtest1.0.0 && $(COMPRESS) SDLtest1.0.0.tar) && $(MOVE) `dirname obj/SDLtest1.0.0`/SDLtest1.0.0.tar.gz . && $(DEL_FILE) -r obj/SDLtest1.0.0
=======
	@test -d obj/CardExample1.0.0 || mkdir -p obj/CardExample1.0.0
	$(COPY_FILE) --parents $(DIST) obj/CardExample1.0.0/ && $(COPY_FILE) --parents include/card.h include/dealer/playingcard.h obj/CardExample1.0.0/ && $(COPY_FILE) --parents src/examples/cardUsage.cpp src/dealer/playingcard.cpp obj/CardExample1.0.0/ && (cd `dirname obj/CardExample1.0.0` && $(TAR) CardExample1.0.0.tar CardExample1.0.0 && $(COMPRESS) CardExample1.0.0.tar) && $(MOVE) `dirname obj/CardExample1.0.0`/CardExample1.0.0.tar.gz . && $(DEL_FILE) -r obj/CardExample1.0.0
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
<<<<<<< HEAD
	-$(DEL_FILE) $(TARGET) 
=======
	-$(DEL_FILE) bin/$(TARGET) 
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

<<<<<<< HEAD
obj/card.o: src/card.cpp include/card.h \
		include/element.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/card.o src/card.cpp

obj/dealergui.o: src/dealergui.cpp include/dealergui.h \
		include/elementmaker.h \
		include/element.h \
		include/card.h \
		include/label.h \
		include/hand.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/dealergui.o src/dealergui.cpp

obj/element.o: src/element.cpp include/element.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/element.o src/element.cpp

obj/elementmaker.o: src/elementmaker.cpp include/elementmaker.h \
		include/element.h \
		include/card.h \
		include/label.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/elementmaker.o src/elementmaker.cpp

obj/hand.o: src/hand.cpp include/hand.h \
		include/card.h \
		include/element.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/hand.o src/hand.cpp

obj/label.o: src/label.cpp include/label.h \
		include/element.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/label.o src/label.cpp

obj/listmenu.o: src/listmenu.cpp include/listmenu.h \
		include/label.h \
		include/element.h \
		include/elementmaker.h \
		include/card.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/listmenu.o src/listmenu.cpp

obj/main.o: src/main.cpp include/label.h \
		include/element.h \
		include/card.h \
		include/listmenu.h \
		include/elementmaker.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/main.o src/main.cpp
=======
obj/cardUsage.o: src/examples/cardUsage.cpp include/dealer/playingcard.h \
		include/card.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/cardUsage.o src/examples/cardUsage.cpp

obj/playingcard.o: src/dealer/playingcard.cpp include/dealer/playingcard.h \
		include/card.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/playingcard.o src/dealer/playingcard.cpp
>>>>>>> b14a25bfb7c9ebf6e4ddf288a11bf7fff0a8999d

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

