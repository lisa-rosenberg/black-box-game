#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>

#include "BlackBoxBackend.h"

int main(int argc, char** argv) {
    BlackBoxBackend blackBoxBackend;

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QObject *topLevel = engine.rootContext();
    QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);

    engine.rootContext()->setContextProperty("blackBoxBackend", &blackBoxBackend);

    QObject::connect(&blackBoxBackend, SIGNAL(setObjectText(QVariant, QVariant)),
                     window, SLOT(setObjectText(QVariant, QVariant)));
    QObject::connect(&blackBoxBackend, SIGNAL(setObjectColor(QVariant, QVariant)),
                     window, SLOT(setObjectColor(QVariant, QVariant)));

    engine.load(QUrl("qrc:/main.qml"));
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return QApplication::exec();
}