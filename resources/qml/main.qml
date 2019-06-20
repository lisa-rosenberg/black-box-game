import QtQuick 2.8
import QtQuick.Controls 1.1

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
        id: board
        visible: true
        height: 800
        width: 800
        anchors.fill: parent
        spacing: 0
        rows: 10
        columns: 10

        Rectangle {
			objectName: "cell"
            id: c00
            width: 80
            height: 80
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
			objectName: "cell"
            id: c01
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxModel.test(45)
            }
        }

        Rectangle {
			objectName: "cell"
            id: c02
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c11
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c12
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c13
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c14
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c15
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c16
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c17
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c18
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c21
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c22
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c23
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c24
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c25
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c26
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c27
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c28
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c31
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c32
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c33
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c34
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c35
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c36
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c37
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c38
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c41
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c42
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c43
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c44
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c45
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c46
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c47
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c48
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c51
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c52
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c53
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c54
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c55
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c56
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c57
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c58
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c61
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c62
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c63
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c64
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c65
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c66
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c67
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c68
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c71
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c72
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c73
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c74
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c75
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c76
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c77
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c78
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
            id: c81
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c82
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c83
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c84
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c85
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c86
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c87
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
            id: c88
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"
        }

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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

        Rectangle {
			objectName: "cell"
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