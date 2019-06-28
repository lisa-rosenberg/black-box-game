#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>

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

    // TODO 0: BECHTE TODO REIHENFOLGE, SONST GIBT ES LIEBSENZUG
    // TODO 1: Richtige anzeigen nach Lösung (erstmal grünes rechteck)
    // TODO 2: Drag am rand für Farben
    // TODO 3: Farben sollen wieder verschwinden, wenn sie nicht gedrückt wurden
    // TODO 4: Runde Atome (falls es nicht zu lange dauert, ist auch okay)
    // TODO 5: Halbtransparent (90%) und Hintergrundbild
    // TODO 6: Hintergrundbild bleibt beim resizen, Spielfeld bleibt gleich
    // TODO 7: Radial Background
    // TODO 8: Hail Dimi den Großen

    blackBoxBackend.setRayDeflectionColors();
    blackBoxBackend.newGame();

    return QApplication::exec();
}