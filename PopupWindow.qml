import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

Popup {
//    property alias titleText: input_title.text;
//    property alias inputText: input.text;

    anchors {
        centerIn: parent
    }
    id: popup
    width: Screen.width / 2
    height: width / 5
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    Rectangle {
        width: 600
        height: 50

        anchors.centerIn: parent
        Text {
            id: input_title
            text: "Поле для ввода:"
            anchors.bottom: test.top
            anchors.bottomMargin: 15
        }


        Rectangle {
            Text {
                id: name
                text: qsTr("Ok")
                anchors.centerIn: parent
            }
            anchors.left: test.right
            width: 50
            height: 50
            border.width: 1
            border.color: "black"
            anchors.leftMargin: 2

            MouseArea {
                id: ok
                anchors.fill: parent
                onClicked: {
                    console.log("send")
                }
                cursorShape: Qt.PointingHandCursor
            }
        }

        Rectangle {
            id: test
            width: 600
            height: 50


            border {
                width: 1
                color: "black"
            }



                TextInput {
                    id: input
//                    text: inputText
                    anchors.fill: parent
                    anchors.leftMargin: 15
                    anchors.rightMargin: 15
                    clip: true
                    verticalAlignment: TextInput.AlignVCenter;
                    autoScroll: true
                    focus: false


                    onFocusChanged: {
                        if (focus) {
                            text = ""
                        } else {
                            console.log("focus lost")
                        }
                    }

                    onAccepted: {
                        // send
                    }
                }
            }

        }


    }
