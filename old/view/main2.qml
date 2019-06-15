import QtQuick 2.12
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import logic/BlackBoxModel

ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 800
    minimumWidth: 800
    minimumHeight: 800

    color: "#09102B"
    title: qsTr("BLACK BOX")

    Grid {
        id: grid
        visible: true
        width: 800
        height: 800
        anchors.fill: parent
        spacing: 0
        rows: 10
        columns: 10

        delegate: Rectangle {
            id: cell
            width: 80
            height: 80
            color: "#09102b"
            border.width: 4
            border.color: "#09102b"
        }
    }
}








