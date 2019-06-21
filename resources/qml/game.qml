import QtQuick 2.9
import QtQuick.Controls 1.4

ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 800
    minimumWidth: 800
    minimumHeight: 800
    color: "#09102B"
    title: qsTr("BLACK BOX")

    TableView {
        id: board
        anchors.fill: parent

        itemDelegate: Rectangle {
            id: c00
            width: 80
            height: 80
            x: 0
            y: 0
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

        itemDelegate: Rectangle {
            id: c01
            width: 80
            height: 80
            x: 80
            y: 0
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.test(c01);
            }
        }

        itemDelegate: Rectangle {
            id: c02
            width: 80
            height: 80
            x: 160
            y: 0
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c03
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c04
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c05
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c06
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c07
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c08
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c09
            width: 80
            height: 80
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

        itemDelegate: Rectangle {
            id: c10
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c11
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c12
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c13
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c14
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c15
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c16
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c17
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c18
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c19
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c20
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c21
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c22
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c23
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c24
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c25
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c26
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c27
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c28
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c29
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c30
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c31
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c32
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c33
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c34
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c35
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c36
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c37
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c38
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c39
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c40
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c41
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c42
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c43
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c44
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c45
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c46
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c47
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c48
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c49
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c50
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c51
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c52
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c53
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c54
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c55
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c56
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c57
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c58
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c59
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c60
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c61
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c62
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c63
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c64
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c65
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c66
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c67
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c68
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c69
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c70
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c71
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c72
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c73
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c74
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c75
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c76
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c77
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c78
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c79
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c80
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c81
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c82
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c83
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c84
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c85
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c86
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c87
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c88
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        itemDelegate: Rectangle {
            id: c89
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c90
            width: 80
            height: 80
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

        itemDelegate: Rectangle {
            id: c91
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c92
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c93
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c94
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c95
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c96
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c97
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c98
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.emitRay(id)
            }
        }

        itemDelegate: Rectangle {
            id: c99
            width: 80
            height: 80
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
