TARGET      =   Black Box
TEMPLATE    =   app

CONFIG      +=  static
QT          +=  qml quick

SOURCES     +=  main.cpp \
                logic/Cell.cpp \
                logic/Board.cpp \
                logic/Rules.cpp

HEADERS     +=  logic/Cell.h \
                logic/Board.h \
                logic/Rules.h

RESOURCES   +=  view/main.qml
