#-------------------------------------------------
#
# Project created by QtCreator 2017-10-24T19:24:43
#
#-------------------------------------------------

#Tested with Qt5.6

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = kocr
TEMPLATE = app


SOURCES += main.cpp\
        kocrmainwindow.cpp

HEADERS  += kocrmainwindow.h

FORMS    += kocrmainwindow.ui

win32 {
   INCLUDEPATH += $$PWD/include/poppler-qt5
   LIBS += -L$$PWD/lib
}

LIBS     += -lpoppler-qt5


unix {
   target.path = /usr/bin
   INSTALLS += target
}
