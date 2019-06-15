TARGET      =   BlackBox
TEMPLATE    =   app

CONFIG      +=  static
QT          +=  qml quick

SOURCES     +=  main.cpp \
                logic/BlackBoxModel.cpp \
                logic/Cell.cpp \
                logic/Board.cpp \
                logic/Rules.cpp

HEADERS     +=  logic/Cell.h \
                logic/BlackBoxModel.h \
                logic/Board.h \
                logic/Rules.h

RESOURCES   +=  view/game.qml \
                view/main.qml \
                view/main2.qml
