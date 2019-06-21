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

    function setObjectText(objectId, text) {
        console.log("objectId: " + objectId)
        console.log("text: " + text)
        var object = objectId
        object.text = text
    }

    function setObjectColor(objectId, color) {
        console.log("objectId: " + objectId)
        console.log("color: " + color)
        var object = objectId
        object.color = color
    }

    Grid {
        id: board
        objectName: "board"
        visible: true
        height: 800
        width: 800
        anchors.fill: parent
        spacing: 0
        rows: 10
        columns: 10

        Rectangle {
            id: c00
            objectName: "00"
            width: 80
            height: 80
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

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
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: c01
            objectName: "01"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c01);
            }
        }

        Rectangle {
            id: c02
            objectName: "02"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c02)
            }
        }

        Rectangle {
            id: c03
            objectName: "03"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c03)
            }
        }

        Rectangle {
            id: c04
            objectName: "04"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c04)
            }
        }

        Rectangle {
            id: c05
            objectName: "05"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c05)
            }
        }

        Rectangle {
            id: c06
            objectName: "06"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c06)
            }
        }

        Rectangle {
            id: c07
            objectName: "07"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c07)
            }
        }

        Rectangle {
            id: c08
            objectName: "08"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c08)
            }
        }

        Rectangle {
            id: c09
            objectName: "09"
            width: 80
            height: 80
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

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
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: c10
            objectName: "10"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c10)
            }
        }

        Rectangle {
            id: c11
            objectName: "11"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c11)
            }
        }

        Rectangle {
            id: c12
            objectName: "12"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c12)
            }
        }

        Rectangle {
            id: c13
            objectName: "13"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c13)
            }
        }

        Rectangle {
            id: c14
            objectName: "14"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c14)
            }
        }

        Rectangle {
            id: c15
            objectName: "15"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c15)
            }
        }

        Rectangle {
            id: c16
            objectName: "16"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c16)
            }
        }

        Rectangle {
            id: c17
            objectName: "17"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c17)
            }
        }

        Rectangle {
            id: c18
            objectName: "18"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c18)
            }
        }

        Rectangle {
            id: c19
            objectName: "19"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c19)
            }
        }

        Rectangle {
            id: c20
            objectName: "20"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c20)
            }
        }

        Rectangle {
            id: c21
            objectName: "21"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c21)
            }
        }

        Rectangle {
            id: c22
            objectName: "22"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c22)
            }
        }

        Rectangle {
            id: c23
            objectName: "23"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c23)
            }
        }

        Rectangle {
            id: c24
            objectName: "24"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c24)
            }
        }

        Rectangle {
            id: c25
            objectName: "25"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c25)
            }
        }

        Rectangle {
            id: c26
            objectName: "26"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c26)
            }
        }

        Rectangle {
            id: c27
            objectName: "27"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c27)
            }
        }

        Rectangle {
            id: c28
            objectName: "28"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c28)
            }
        }

        Rectangle {
            id: c29
            objectName: "29"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c29)
            }
        }

        Rectangle {
            id: c30
            objectName: "30"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c30)
            }
        }

        Rectangle {
            id: c31
            objectName: "31"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c31)
            }
        }

        Rectangle {
            id: c32
            objectName: "32"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c32)
            }
        }

        Rectangle {
            id: c33
            objectName: "33"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c33)
            }
        }

        Rectangle {
            id: c34
            objectName: "34"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c34)
            }
        }

        Rectangle {
            id: c35
            objectName: "35"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c35)
            }
        }

        Rectangle {
            id: c36
            objectName: "36"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c36)
            }
        }

        Rectangle {
            id: c37
            objectName: "37"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c37)
            }
        }

        Rectangle {
            id: c38
            objectName: "38"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuessGuess(c38)
            }
        }

        Rectangle {
            id: c39
            objectName: "39"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c39)
            }
        }

        Rectangle {
            id: c40
            objectName: "40"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c40)
            }
        }

        Rectangle {
            id: c41
            objectName: "41"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c41)
            }
        }

        Rectangle {
            id: c42
            objectName: "42"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c42)
            }
        }

        Rectangle {
            id: c43
            objectName: "43"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c43)
            }
        }

        Rectangle {
            id: c44
            objectName: "44"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c44)
            }
        }

        Rectangle {
            id: c45
            objectName: "45"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c45)
            }
        }

        Rectangle {
            id: c46
            objectName: "46"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c46)
            }
        }

        Rectangle {
            id: c47
            objectName: "47"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c47)
            }
        }

        Rectangle {
            id: c48
            objectName: "48"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c48)
            }
        }

        Rectangle {
            id: c49
            objectName: "49"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c49)
            }
        }

        Rectangle {
            id: c50
            objectName: "50"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c50)
            }
        }

        Rectangle {
            id: c51
            objectName: "51"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c51)
            }
        }

        Rectangle {
            id: c52
            objectName: "52"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c52)
            }
        }

        Rectangle {
            id: c53
            objectName: "53"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c53)
            }
        }

        Rectangle {
            id: c54
            objectName: "54"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c54)
            }
        }

        Rectangle {
            id: c55
            objectName: "55"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c55)
            }
        }

        Rectangle {
            id: c56
            objectName: "56"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c56)
            }
        }

        Rectangle {
            id: c57
            objectName: "57"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c57)
            }
        }

        Rectangle {
            id: c58
            objectName: "58"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c58)
            }
        }

        Rectangle {
            id: c59
            objectName: "59"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c59)
            }
        }

        Rectangle {
            id: c60
            objectName: "60"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c60)
            }
        }

        Rectangle {
            id: c61
            objectName: "61"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c61)
            }
        }

        Rectangle {
            id: c62
            objectName: "62"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c62)
            }
        }

        Rectangle {
            id: c63
            objectName: "63"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c63)
            }
        }

        Rectangle {
            id: c64
            objectName: "64"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c64)
            }
        }

        Rectangle {
            id: c65
            objectName: "65"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c65)
            }
        }

        Rectangle {
            id: c66
            objectName: "66"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c66)
            }
        }

        Rectangle {
            id: c67
            objectName: "67"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c67)
            }
        }

        Rectangle {
            id: c68
            objectName: "68"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c68)
            }
        }

        Rectangle {
            id: c69
            objectName: "69"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c69)
            }
        }

        Rectangle {
            id: c70
            objectName: "70"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c70)
            }
        }

        Rectangle {
            id: c71
            objectName: "71"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c71)
            }
        }

        Rectangle {
            id: c72
            objectName: "72"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c72)
            }
        }

        Rectangle {
            id: c73
            objectName: "73"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c73)
            }
        }

        Rectangle {
            id: c74
            objectName: "74"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c74)
            }
        }

        Rectangle {
            id: c75
            objectName: "75"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c75)
            }
        }

        Rectangle {
            id: c76
            objectName: "76"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c76)
            }
        }

        Rectangle {
            id: c77
            objectName: "77"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c77)
            }
        }

        Rectangle {
            id: c78
            objectName: "78"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c78)
            }
        }

        Rectangle {
            id: c79
            objectName: "79"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c79)
            }
        }

        Rectangle {
            id: c80
            objectName: "80"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c80)
            }
        }

        Rectangle {
            id: c81
            objectName: "81"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c81)
            }
        }

        Rectangle {
            id: c82
            objectName: "82"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c82)
            }
        }

        Rectangle {
            id: c83
            objectName: "83"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c83)
            }
        }

        Rectangle {
            id: c84
            objectName: "84"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c84)
            }
        }

        Rectangle {
            id: c85
            objectName: "85"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c85)
            }
        }

        Rectangle {
            id: c86
            objectName: "86"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c86)
            }
        }

        Rectangle {
            id: c87
            objectName: "87"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c87)
            }
        }

        Rectangle {
            id: c88
            objectName: "88"
            width: 80
            height: 80
            color: "#8b28fc"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.setAtomGuess(c88)
            }
        }

        Rectangle {
            id: c89
            objectName: "89"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c89)
            }
        }

        Rectangle {
            id: c90
            objectName: "90"
            width: 80
            height: 80
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

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
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c91)
            }
        }

        Rectangle {
            id: c92
            objectName: "92"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c92)
            }
        }

        Rectangle {
            id: c93
            objectName: "93"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c93)
            }
        }

        Rectangle {
            id: c94
            objectName: "94"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c94)
            }
        }

        Rectangle {
            id: c95
            objectName: "95"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c95)
            }
        }

        Rectangle {
            id: c96
            objectName: "96"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c96)
            }
        }

        Rectangle {
            id: c97
            objectName: "97"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c97)
            }
        }

        Rectangle {
            id: c98
            objectName: "98"
            width: 80
            height: 80
            color: "#424551"
            radius: 0
            border.width: 4
            border.color: "#09102b"

            MouseArea {
                anchors.fill: parent
                onClicked: blackBoxBackend.emitRay(c98)
            }
        }

        Rectangle {
            id: c99
            objectName: "99"
            width: 80
            height: 80
            color: "#09102b"
            radius: 0
            border.width: 4
            border.color: "#09102b"

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
