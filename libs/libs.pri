# common settings for all libs in this project.

include (common.pri)
DESTDIR = $$CPPLIBS
LIBS += -L$$CPPLIBS

win32 {
    LIBS += -L$$QTLIBS
 }

TEMPLATE = lib

win32 {
    CONFIG += create_prl
    DEFINES += BUILD_DLL
    CONFIG += dll shared
}


