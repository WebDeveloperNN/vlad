import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
//import com.ics.demo 1.0

Item {

    Rectangle {
        id: searchbar
        width: 600
        height: 50
        anchors.centerIn: parent



        Rectangle {

            width: 550
            height: 50
    //        clip: true


            border {
                width: 1
                color: "lightgray"
            }

            TextInput {
                id: searchbar_input
                text: "Фамилия владельца, марку, номер, год регистрации, цвет"
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

                //  create an object of that class in QML code and then use its functions
                // а у меня не будет такого, что создается несколько подключений к дб????
                // мне наверное нужно будет переделать так, что я не импортирую модуль,
    //            а так что я создаю один раз объект класса а потом его использую
                // будет прикольно если в одном случае создается обхект 1 на всю программу, который можно испльзовать
    //            а во втором слусе создается тип, который ты каждый раз создаешь объект используя {}
    //            Database { id: database }
                onAccepted: {
                    // sent
                    console.log(Database.test())
                }
            }




    //        TextField {
    //            id: searchbar_input
    //            text: "Фамилия владельца, марку, номер, год регистрации, цвет"
    //            anchors.fill: parent

    //            verticalAlignment: TextInput.AlignVCenter;
    //            autoScroll: true
    //            focus: false

    //            onFocusChanged: {
    //                if (focus) {
    //                    text = ""
    //                }
    //            }
    //            onAccepted: {
    //                console.log("sent")
    //            }
    //            onEditingFinished: {
    //                text = "f"
    //            }
    //        }




    //        MouseArea {
    //            id: mousearea3
    //            anchors.fill: parent
    //            hoverEnabled: true
    //            cursorShape: Qt.IBeamCursor

    //        }
        }







        Rectangle {
            width: parent.height
            height: parent.height
            border.color: mousearea2.containsMouse ? "gray" : "lightgray"
            color: mousearea2.containsMouse ? "lightgray" : "transparent"
            anchors.right: parent.right

            Rectangle {
                anchors.fill: parent
                anchors.centerIn: parent
                anchors.leftMargin: 5
                anchors.topMargin: 5
                color: "transparent";

                MouseArea {
                    hoverEnabled: true
                    anchors.fill: parent
                    cursorShape: "PointingHandCursor"
                    id: mousearea2
                    onClicked: {
                        if (searchbar_input.text == "Фамилия владельца, марку, номер, год регистрации, цвет" || searchbar_input.text == "") {
                            searchbar_input.focus = true
                        } else {
                            searchbar_input.onAccepted()
                        }
                    }
                }

                Rectangle {
                    id: circle
                    width: 20
                    height: 20
                    border.width: 3
                    border.color: "black"
                    radius: 50
                    color: "transparent"
                }
                Rectangle {
                    width: 30
                    height: 3
                    color: "black"
                    anchors.left: circle.right
                    anchors.top: circle.bottom
                    rotation: 45
                    anchors.leftMargin: -6
                    anchors.topMargin: 5
                }
            }
        }

        Text {
            text: "Показать все данные"
            color: mousearea1.containsMouse ? "lightblue" : "blue"
            font.underline: true
            anchors.top: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 10

            MouseArea {
                id: mousearea1
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
            }
        }





    }
}















