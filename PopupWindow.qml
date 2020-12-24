import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0

Popup {
    onActiveFocusChanged: {
        clear();
    }

    anchors {
        centerIn: parent
    }
    id: popup
    width: Screen.width / 2
    height: width / 5
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside;

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
                    sendInput(input.text)
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
                        sendInput(input.text)
                    }
                }

                TextArea {
                    id: answer
                    text: "result";
                    anchors.top: input.bottom
                }
            }

        }

    function sendInput(input) {
        let whatIsBlock = DB.getActiveBlock()
        let result;
        let prefix = "По запросу \""
        let postfix = "\" найдены такие ответы:\n"
        switch (whatIsBlock) {
        case "first":
            result = DB.first(input);
            answer.text = result;
            break;
        case "second":
            result = DB.second(input);
            answer.text = prefix + input + postfix + result;
            break;
        case "third":
            let query = input.split(' ');
            result = DB.third(query[0], query[1]);
            answer.text = result;
            break;
        case "fourth":
            result = DB.fourth(input);
            answer.text = result;
            break;
        }

    }

    function clear() {
        answer.text = "";
        input.text = "";
    }


}




