#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "BlackBoxBackend.h"

int main(int argc, char** argv) {
    BlackBoxBackend blackBoxBackend;

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("blackBoxBackend", &blackBoxBackend);

    engine.load(QUrl("qrc:/main.qml"));
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return QApplication::exec();
}