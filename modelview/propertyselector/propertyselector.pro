######################################################################
# Automatically generated by qmake (3.0) Thu 23. May 16:15:06 2013
######################################################################

include(../../libs/common.pri)
LIBS += -L$$CPPLIBS -ldataobjects -lmetadata
QT += widgets
TEMPLATE = app
TARGET = propertyselector
INCLUDEPATH +=  ../../libs/dataobjects \
                ../../libs/metadata

# Input
SOURCES += propertyselectorcontrol.cpp \
           propertyselectormodel.cpp \
           propertyselectorview.cpp \
    main.cpp

HEADERS += \
    propertyselectormodel.h \
    propertyselectorview.h \
    propertyselectorcontrol.h
