#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>
#include <QQuickView>

#include "BlackBoxBackend.h"

int main(int argc, char** argv) {
    BlackBoxBackend blackBoxBackend;

    QApplication app(argc, argv);
    QQmlApplicationEngine engine;

    //QQuickView view(&engine, 0);
    //view.setSource(QUrl("qrc:/main.qml"));
    //view.setResizeMode(QQuickView::SizeRootObjectToView);
    //QQmlContext *context = view.rootContext();
    //context->setContextProperty("blackBoxBackend", &blackBoxBackend);

    engine.rootContext()->setContextProperty("blackBoxBackend", &blackBoxBackend);
    engine.load(QUrl("qrc:/main.qml"));

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    blackBoxBackend.setRayDeflectionColors();
    blackBoxBackend.newGame();

    return QApplication::exec();
}