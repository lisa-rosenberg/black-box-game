//
// Created by lisar on 19/06/10.
//

#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <logic/Board.h>
#include <logic/Cell.h>
#include <logic/Rules.h>

int main(int argc, char *argv[]) {

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    //qmlRegisterType<Board>("Board", 1, 0, "Board");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

