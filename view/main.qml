import QtQuick 2.12
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 750
    height: 750
    minimumWidth: 475
    minimumHeight: 300

    color: "#09102B"
    title: qsTr("BLACK BOX")

    Grid {
        id: grid
        y: 50
        height: 750
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        antialiasing: true
        visible: true
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        spacing: 0
        rows: 100
        columns: 10

        Rectangle {
            id: c00
            width: 75
            height: 75
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            Text {
                id: atomText
                color: "#ffffff"
                text: qsTr("ATOMS")
                topPadding: 15
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                font.pixelSize: 12
            }

            Text {
                id: atomNumber
                color: "#ffffff"
                text: qsTr("0")
                bottomPadding: 15
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: c01
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c02
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c03
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c04
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c05
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c06
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c07
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c08
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c09
            width: 75
            height: 75
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            Text {
                id: scoreText
                color: "#ffffff"
                text: qsTr("SCORE")
                anchors.fill: parent
                topPadding: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                font.pixelSize: 12
            }

            Text {
                id: scoreAmount
                color: "#ffffff"
                text: qsTr("0")
                anchors.fill: parent
                bottomPadding: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: c10
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c11
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c12
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c13
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c14
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c15
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c16
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c17
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c18
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c19
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c20
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c21
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c22
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c23
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c24
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c25
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c26
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c27
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c28
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c29
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c30
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c31
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c32
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c33
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c34
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c35
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c36
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c37
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c38
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c39
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c40
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c41
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c42
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c43
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c44
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c45
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c46
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c47
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c48
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c49
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c50
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c51
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c52
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c53
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c54
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c55
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c56
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c57
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c58
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c59
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c60
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c61
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c62
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c63
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c64
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c65
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c66
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c67
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c68
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c69
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c70
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c71
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c72
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c73
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c74
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c75
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c76
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c77
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c78
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c79
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c80
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c81
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c82
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c83
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c84
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c85
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c86
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c87
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c88
            width: 75
            height: 75
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
            id: c89
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c90
            width: 75
            height: 75
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            Text {
                id: newButton
                color: "#ffffff"
                text: qsTr("NEW")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: c91
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c92
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c93
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c94
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c95
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c96
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c97
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c98
            width: 75
            height: 75
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
				onClicked: view/BlackBoxModel.emitRay(id)
            }
        }

        Rectangle {
            id: c99
            width: 75
            height: 75
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            Text {
                id: enterButton
                color: "#ffffff"
                text: qsTr("ENTER")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
        }
    }

}








