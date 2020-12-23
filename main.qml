import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Window {
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Vlad Bagin")

    // items

Grid {
    columns: 2
    anchors.centerIn: parent
    spacing: 100

//    ListModel {}



    // blocs
    Block {

text: qsTr("Расчитать
количество
занятий")
    activeBlock: 0.1
}

    Block {
text: qsTr("Узнать экзамен
или зачет")
    }
    Block {
text: qsTr("Список
дисциплин
(по специальности)")
    }
Block {
text: qsTr("Вывести
список
дисциплин
(по кафедре)")
    }
}

PopupWindow{
    id: popup
//    titleText: "inpuit";
//    inputText: "inpuit"

}


//    Button {
//        text: "Open popup"
//        onClicked: popup.open()
//    }

//    Item {
//        anchors.fill: parent
//        Popup {
//            anchors {
//                centerIn: parent
//            }
//            id: popup
//            width: Screen.width / 2
//            height: width / 5
//            modal: true
//            focus: true
//            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

//            Rectangle {
//        //        id: input
//                width: 600
//                height: 50

//                anchors.centerIn: parent
//                Text {
//                    id: input_title
//                    text: "Введите это"
//                    anchors.bottom: test.top
//                    anchors.bottomMargin: 15
//                }


//                Rectangle {
//                    Text {
//                        id: name
//                        text: qsTr("Ok")
//                        anchors.centerIn: parent
//                    }
//                    anchors.left: test.right
//                    width: 50
//                    height: 50
//                    border.width: 1
//                    border.color: "black"
//                    anchors.leftMargin: 2

//                    MouseArea {
//                        id: ok
//                        anchors.fill: parent
//                        onClicked: {
//                            console.log("send")
//                        }
//                        cursorShape: Qt.PointingHandCursor
//                    }
//                }

//                Rectangle {
//                    id: test
//                    width: 600
//                    height: 50


//                    border {
//                        width: 1
//                        color: "black"
//                    }



//                        TextInput {
//                            id: input
//                            text: "Введите..."
//                            anchors.fill: parent
//                            anchors.leftMargin: 15
//                            anchors.rightMargin: 15
//                            clip: true
//                            verticalAlignment: TextInput.AlignVCenter;
//                            autoScroll: true
//                            focus: false


//                            onFocusChanged: {
//                                if (focus) {
//                                    text = ""
//                                } else {
//                                    console.log("focus lost")
//                                }
//                            }

//                            onAccepted: {
//                                // send
//                            }
//                        }
//                    }

//                }


//            }
//        }






    }






// все что использовал - разобрать


//шифр специальности, (specialty)
//наименование дисциплины (subject)
//шифр кафедры [БукваЦифраЦифра] (department),
//количество лекций (lecture),
//количество практик, (practice)
//количество лабораторных, (laboratory)
//признак: 2 – экзамен, 1 – зачет, 0 – нет ничего. ()

//    • по шифру кафедры подсчитать общее количество проводимых ею занятий;
//    • вывести список дисциплин для  заданной специальности;
//    • найти план занятий по заданным специальности и дисциплине;
//    • вывести список дисциплин, читаемых заданной кафедрой.





