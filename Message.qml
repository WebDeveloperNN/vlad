import QtQuick 2.0
import QtQuick.Window 2.12



    Rectangle {
        id: messageBox
        width: messageBoxText.contentWidth + messageBoxText.anchors.margins + messageBoxText.anchors.margins
        z: 1;
        height: messageBoxText.contentHeight + messageBoxText.anchors.margins + messageBoxText.anchors.margins
        color: "#D4FFC0"
//        anchors.top: parent.top
//        anchors.topMargin: height / 2
//        y: height / 2
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 1
        border.color: "black"
        radius: 10
        state: "hideMessageBox"




        states: [
            State {
                name: "showMessageBox"
                PropertyChanges {
                    target: messageBox
                    y: height / 2
                 }
            },
            State {
                name: "hideMessageBox"
                PropertyChanges {
                    target: messageBox
                    y: -height
                }
            }

        ]
        transitions: [
            Transition {
                from: "hideMessageBox"
                to: "showMessageBox"
              NumberAnimation {
                  target: messageBox
                  properties: "y"
                  duration: 1000
              }
            },
            Transition {
                from: "showMessageBox"
                to: "hideMessageBox"
              NumberAnimation {
                  target: messageBox
                  properties: "y"
                  duration: 200
              }
            }
          ]

        Component.onCompleted:  {
            if (Database.connectToDB()) {
                state = "showMessageBox"
            } else {
                state = "hideMessageBox"
            }

        }

//        transitions: [
//            Transition {
//              NumberAnimation {
//                  from: -height
//                  to: height / 2
//                  target: messageBox
//                  property: "y"
//                  duration: 500
//                  running: true
//              }
//            }
//          ]


//        NumberAnimation {
//            target: messageBox
//            property: "y"
//            from: -height
//            to: height / 2
//            duration: 500 // Длительность анимации в миллисекундах
//            running: true
//        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
               messageBox.state === "hideMessageBox" ? messageBox.state = "showMessageBox" : messageBox.state = "hideMessageBox"
            }
        }



        Text {
            id: messageBoxText
            text: Database.messageBox()
            anchors.fill: parent
            anchors.margins: 15
        }

        CloseButton {
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 5

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                // hoverEnabled: true
                onClicked: {
                    messageBox.state = "hideMessageBox"
                }
            }
        }
    }

