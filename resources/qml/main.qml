import QtQuick 2.8
import QtQuick.Controls 1.1
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 1250
    height: 1250
    minimumWidth: 1250
    minimumHeight: 1250
    //color: "#09102B"
    title: qsTr("BLACK BOX")

    Image {
        anchors.fill: parent
        source: "../img/background.jpg"
    }

    property var idMap: ({atomAmount:atomAmount, scoreAmount:scoreAmount,
        c00:c00, c01:c01, c02:c02, c03:c03, c04:c04, c05:c05, c06:c06, c07:c07, c08:c08, c09:c09,
        c10:c10, c11:c11, c12:c12, c13:c13, c14:c14, c15:c15, c16:c16, c17:c17, c18:c18, c19:c19,
        c20:c20, c21:c21, c22:c22, c23:c23, c24:c24, c25:c25, c26:c26, c27:c27, c28:c28, c29:c29,
        c30:c30, c31:c31, c32:c32, c33:c33, c34:c34, c35:c35, c36:c36, c37:c37, c38:c38, c39:c39,
        c40:c40, c41:c41, c42:c42, c43:c43, c44:c44, c45:c45, c46:c46, c47:c47, c48:c48, c49:c49,
        c50:c50, c51:c51, c52:c52, c53:c53, c54:c54, c55:c55, c56:c56, c57:c57, c58:c58, c59:c59,
        c60:c60, c61:c61, c62:c62, c63:c63, c64:c64, c65:c65, c66:c66, c67:c67, c68:c68, c69:c69,
        c70:c70, c71:c71, c72:c72, c73:c73, c74:c74, c75:c75, c76:c76, c77:c77, c78:c78, c79:c79,
        c80:c80, c81:c81, c82:c82, c83:c83, c84:c84, c85:c85, c86:c86, c87:c87, c88:c88, c89:c89,
        c90:c90, c91:c91, c92:c92, c93:c93, c94:c94, c95:c95, c96:c96, c97:c97, c98:c98, c99:c99,
        a11:a11, a12:a12, a13:a13, a14:a14, a15:a15, a16:a16, a17:a17, a18:a18,
        a21:a21, a22:a22, a23:a23, a24:a24, a25:a25, a26:a26, a27:a27, a28:a28,
        a31:a31, a32:a32, a33:a33, a34:a34, a35:a35, a36:a36, a37:a37, a38:a38,
        a41:a41, a42:a42, a43:a43, a44:a44, a45:a45, a46:a46, a47:a47, a48:a48,
        a51:a51, a52:a52, a53:a53, a54:a54, a55:a55, a56:a56, a57:a57, a58:a58,
        a61:a61, a62:a62, a63:a63, a64:a64, a65:a65, a66:a66, a67:a67, a68:a68,
        a71:a71, a72:a72, a73:a73, a74:a74, a75:a75, a76:a76, a77:a77, a78:a78,
        a81:a81, a82:a82, a83:a83, a84:a84, a85:a85, a86:a86, a87:a87, a88:a88})

    function findObjectById(objectId) {
        return idMap[objectId]
    }

    Connections {
        id: cppConnection
        target: blackBoxBackend
        ignoreUnknownSignals: true

        onSetObjectText: {
            var object = findObjectById(objectId)
            object.text = text
        }

        onSetObjectColor: {
            var object = findObjectById(objectId)
            object.color = color
        }

        onSetObjectVisibility: {
            var object = findObjectById(objectId)
            object.visible = visible
        }
    }

    Grid {
        id: board
        objectName: "board"
        visible: true
        height: 750
        width: 750
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 0
        rows: 10
        columns: 10

        Rectangle {
            id: c00
            objectName: "00"
            width: parent.width / 10
            height: parent.height / 10
            color: "#09102b"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Text {
                id: atomText
                objectName: "atomText"
                color: "#ffffff"
                text: qsTr("ATOMS")
                topPadding: 15
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                font.pixelSize: 12
            }

            Text {
                id: atomAmount
                objectName: "atomAmount"
                color: "#ffffff"
                text: qsTr("0")
                bottomPadding: 15
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.pixelSize: 15
            }
        }

        Rectangle {
            id: c01
            objectName: "01"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c01);
            }
        }

        Rectangle {
            id: c02
            objectName: "02"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c02)
            }
        }

        Rectangle {
            id: c03
            objectName: "03"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c03)
            }
        }

        Rectangle {
            id: c04
            objectName: "04"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c04)
            }
        }

        Rectangle {
            id: c05
            objectName: "05"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c05)
            }
        }

        Rectangle {
            id: c06
            objectName: "06"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c06)
            }
        }

        Rectangle {
            id: c07
            objectName: "07"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c07)
            }
        }

        Rectangle {
            id: c08
            objectName: "08"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c08)
            }
        }

        Rectangle {
            id: c09
            objectName: "09"
            width: parent.width / 10
            height: parent.height / 10
            color: "#09102b"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Text {
                id: scoreText
                objectName: "scoreText"
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
                objectName: "scoreAmount"
                color: "#ffffff"
                text: qsTr("0")
                anchors.fill: parent
                bottomPadding: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.pixelSize: 15
            }
        }

        Rectangle {
            id: c10
            objectName: "10"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c10)
            }
        }

        Rectangle {
            id: c11
            objectName: "11"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a11
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c11)
            }
        }

        Rectangle {
            id: c12
            objectName: "12"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a12
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c12)
            }
        }

        Rectangle {
            id: c13
            objectName: "13"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a13
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c13)
            }
        }

        Rectangle {
            id: c14
            objectName: "14"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a14
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c14)
            }
        }

        Rectangle {
            id: c15
            objectName: "15"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a15
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c15)
            }
        }

        Rectangle {
            id: c16
            objectName: "16"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a16
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c16)
            }
        }

        Rectangle {
            id: c17
            objectName: "17"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a17
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c17)
            }
        }

        Rectangle {
            id: c18
            objectName: "18"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a18
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c18)
            }
        }

        Rectangle {
            id: c19
            objectName: "19"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c19)
            }
        }

        Rectangle {
            id: c20
            objectName: "20"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c20)
            }
        }

        Rectangle {
            id: c21
            objectName: "21"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a21
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c21)
            }
        }

        Rectangle {
            id: c22
            objectName: "22"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a22
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c22)
            }
        }

        Rectangle {
            id: c23
            objectName: "23"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a23
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c23)
            }
        }

        Rectangle {
            id: c24
            objectName: "24"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a24
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c24)
            }
        }

        Rectangle {
            id: c25
            objectName: "25"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a25
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c25)
            }
        }

        Rectangle {
            id: c26
            objectName: "26"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a26
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c26)
            }
        }

        Rectangle {
            id: c27
            objectName: "27"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a27
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c27)
            }
        }

        Rectangle {
            id: c28
            objectName: "28"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a28
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c28)
            }
        }

        Rectangle {
            id: c29
            objectName: "29"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c29)
            }
        }

        Rectangle {
            id: c30
            objectName: "30"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c30)
            }
        }

        Rectangle {
            id: c31
            objectName: "31"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a31
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c31)
            }
        }

        Rectangle {
            id: c32
            objectName: "32"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a32
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c32)
            }
        }

        Rectangle {
            id: c33
            objectName: "33"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a33
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c33)
            }
        }

        Rectangle {
            id: c34
            objectName: "34"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a34
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c34)
            }
        }

        Rectangle {
            id: c35
            objectName: "35"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a35
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c35)
            }
        }

        Rectangle {
            id: c36
            objectName: "36"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a36
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c36)
            }
        }

        Rectangle {
            id: c37
            objectName: "37"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a37
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c37)
            }
        }

        Rectangle {
            id: c38
            objectName: "38"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a38
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c38)
            }
        }

        Rectangle {
            id: c39
            objectName: "39"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c39)
            }
        }

        Rectangle {
            id: c40
            objectName: "40"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c40)
            }
        }

        Rectangle {
            id: c41
            objectName: "41"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a41
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c41)
            }
        }

        Rectangle {
            id: c42
            objectName: "42"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a42
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c42)
            }
        }

        Rectangle {
            id: c43
            objectName: "43"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a43
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c43)
            }
        }

        Rectangle {
            id: c44
            objectName: "44"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a44
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c44)
            }
        }

        Rectangle {
            id: c45
            objectName: "45"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a45
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c45)
            }
        }

        Rectangle {
            id: c46
            objectName: "46"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a46
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c46)
            }
        }

        Rectangle {
            id: c47
            objectName: "47"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a47
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c47)
            }
        }

        Rectangle {
            id: c48
            objectName: "48"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a48
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c48)
            }
        }

        Rectangle {
            id: c49
            objectName: "49"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c49)
            }
        }

        Rectangle {
            id: c50
            objectName: "50"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c50)
            }
        }

        Rectangle {
            id: c51
            objectName: "51"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a51
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c51)
            }
        }

        Rectangle {
            id: c52
            objectName: "52"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a52
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c52)
            }
        }

        Rectangle {
            id: c53
            objectName: "53"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a53
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c53)
            }
        }

        Rectangle {
            id: c54
            objectName: "54"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a54
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c54)
            }
        }

        Rectangle {
            id: c55
            objectName: "55"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a55
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c55)
            }
        }

        Rectangle {
            id: c56
            objectName: "56"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a56
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c56)
            }
        }

        Rectangle {
            id: c57
            objectName: "57"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a57
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c57)
            }
        }

        Rectangle {
            id: c58
            objectName: "58"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a58
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c58)
            }
        }

        Rectangle {
            id: c59
            objectName: "59"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c59)
            }
        }

        Rectangle {
            id: c60
            objectName: "60"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c60)
            }
        }

        Rectangle {
            id: c61
            objectName: "61"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a61
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c61)
            }
        }

        Rectangle {
            id: c62
            objectName: "62"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a62
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c62)
            }
        }

        Rectangle {
            id: c63
            objectName: "63"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a63
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c63)
            }
        }

        Rectangle {
            id: c64
            objectName: "64"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a64
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c64)
            }
        }

        Rectangle {
            id: c65
            objectName: "65"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a65
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c65)
            }
        }

        Rectangle {
            id: c66
            objectName: "66"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a66
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c66)
            }
        }

        Rectangle {
            id: c67
            objectName: "67"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a67
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c67)
            }
        }

        Rectangle {
            id: c68
            objectName: "68"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a68
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c68)
            }
        }

        Rectangle {
            id: c69
            objectName: "69"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c69)
            }
        }

        Rectangle {
            id: c70
            objectName: "70"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c70)
            }
        }

        Rectangle {
            id: c71
            objectName: "71"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a71
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c71)
            }
        }

        Rectangle {
            id: c72
            objectName: "72"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a72
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c72)
            }
        }

        Rectangle {
            id: c73
            objectName: "73"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a73
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c73)
            }
        }

        Rectangle {
            id: c74
            objectName: "74"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a74
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c74)
            }
        }

        Rectangle {
            id: c75
            objectName: "75"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a75
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c75)
            }
        }

        Rectangle {
            id: c76
            objectName: "76"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a76
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c76)
            }
        }

        Rectangle {
            id: c77
            objectName: "77"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a77
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c77)
            }
        }

        Rectangle {
            id: c78
            objectName: "78"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a78
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c78)
            }
        }

        Rectangle {
            id: c79
            objectName: "79"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c79)
            }
        }

        Rectangle {
            id: c80
            objectName: "80"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c80)
            }
        }

        Rectangle {
            id: c81
            objectName: "81"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a81
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c81)
            }
        }

        Rectangle {
            id: c82
            objectName: "82"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a82
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c82)
            }
        }

        Rectangle {
            id: c83
            objectName: "83"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a83
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c83)
            }
        }

        Rectangle {
            id: c84
            objectName: "84"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a84
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c84)
            }
        }

        Rectangle {
            id: c85
            objectName: "85"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a85
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c85)
            }
        }

        Rectangle {
            id: c86
            objectName: "86"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a86
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c86)
            }
        }

        Rectangle {
            id: c87
            objectName: "87"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a87
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c87)
            }
        }

        Rectangle {
            id: c88
            objectName: "88"
            width: parent.width / 10
            height: parent.height / 10
            color: "#8b28fc"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Rectangle {
                id: a88
                visible: false
                anchors.centerIn: parent
                width: parent.width / 1.25
                height: parent.width / 1.25
                radius: width * 0.5
                color: "#1a0b32"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c88)
            }
        }

        Rectangle {
            id: c89
            objectName: "89"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c89)
            }
        }

        Rectangle {
            id: c90
            objectName: "90"
            width: parent.width / 10
            height: parent.height / 10
            color: "#09102b"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Text {
                id: newButton
                objectName: "newButton"
                color: "#ffffff"
                text: qsTr("NEW")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.newGame()
            }
        }

        Rectangle {
            id: c91
            objectName: "91"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c91)
            }
        }

        Rectangle {
            id: c92
            objectName: "92"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c92)
            }
        }

        Rectangle {
            id: c93
            objectName: "93"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c93)
            }
        }

        Rectangle {
            id: c94
            objectName: "94"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c94)
            }
        }

        Rectangle {
            id: c95
            objectName: "95"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c95)
            }
        }

        Rectangle {
            id: c96
            objectName: "96"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c96)
            }
        }

        Rectangle {
            id: c97
            objectName: "97"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c97)
            }
        }

        Rectangle {
            id: c98
            objectName: "98"
            width: parent.width / 10
            height: parent.height / 10
            color: "#424551"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c98)
            }
        }

        Rectangle {
            id: c99
            objectName: "99"
            width: parent.width / 10
            height: parent.height / 10
            color: "#09102b"
            radius: 0
            border.width: width / 25
            border.color: "#09102b"

            RadialGradient {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop {position: 0.0; color: "#00000000"}
                    GradientStop {position: 0.4; color: "#00000000"}
                    GradientStop {position: 1.0; color: "#50000000"}
                }
            }

            Text {
                id: enterButton
                objectName: "enterButton"
                color: "#ffffff"
                text: qsTr("ENTER")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.enterGuess()
            }
        }
    }
}
