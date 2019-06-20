#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "BlackBoxModel.h"

int main(int argc, char** argv) {
    BlackBoxModel blackBoxModel;

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("blackBoxModel", &blackBoxModel);

    engine.load(QUrl("qrc:/main.qml"));
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return QApplication::exec();
}