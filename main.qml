import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12


Window {
    id: window
    width: Screen.width - 1000
    height: Screen.height - 500
    visible: true
    title: "Database"
//    property string someValue: "first"

    Component {
        id: loginPage
        ConnectionItem {}
    }

    Component {
        id: searchbarPage
        Searchbar {
            Message {}
        }
    }

    StackView {
        id: stack
        initialItem: loginPage
        anchors {
            fill: parent
        }
    }


        function load_page(page) {
            switch (page) {
                case "searchbarPage":
                    stack.push(searchbarPage);
                    break;
            }
        }




//        Item {
//            id: buttonsItem
//            width: 200
//            height: 50
//            anchors.bottom: parent.bottom
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.bottomMargin: 10


//                    Button {
//                        id: popButton
//                        text: "Назад"
//                        width: 100
//                        height: 50
//                        onClicked: {
//                            switch (someValue) {
//                                case "first":
//                                    if (!stack.empty) {

//                                    } else {
//                                        someValue = "second"
//                                        stack.pop();
//                                    }
//                                    break;
//                                case "second":
//                                    stack.pop();
//                                    someValue = "first"
//                                    break;
//                                case "third":
//                                    stack.pop();
//                                    someValue = "second"
//                                    break;
//                                case "fourth":
//                                    stack.pop();
//                                    someValue = "third"
//                                    break;
//                            }
//                        }
//                    }
//                    Button {
//                        id: pushButton
//                        text: "Вперед"
//                        width: 100
//                        height: 50
//                        anchors.left: popButton.right
//                        anchors.leftMargin: 5
//                        onClicked: {
//                            load_page(someValue);

//                        }
//                    }
//        }


//    StackView {
//        anchors {
////            left: parent.left
////            right: parent.right
////            top: parent.top
////            bottom: buttonsItem.top
//            fill: parent
//        }
//        z: -1
//        id: stack
//        initialItem: first

//    }

//    Component {
//        id: first

//        Rectangle {
//            color: "blue"
//            Text {
//                text: qsTr("first")
//                anchors.centerIn: parent
//            }
//        }
//    }

//    Component {
//        id: second
//        Rectangle {
//            color: "red"
//            Text {
//                text: qsTr("second")
//                anchors.centerIn: parent
//            }
//        }
//    }

//    Component {
//        id: third
//        Rectangle {
//            color: "yellow"
//            Text {
//                text: qsTr("third")
//                anchors.centerIn: parent
//            }
//        }
//    }

//    Component {
//        id:  fourth
//        Rectangle {
//            color: "pink"
//            Text {
//                text: qsTr("fourth")
//                anchors.centerIn: parent
//            }
//        }
//    }


//    function load_page(page) {
//        switch (page) {
//            case "first":
//                stack.push(second);
//                someValue = "second"
//                break;
//            case "second":
//                stack.push(third);
//                someValue = "third"
//                break;
//            case "third":
//                stack.push(fourth);
//                someValue = "fourth"
//                break;
//            case "fourth":
//                stack.push(first);
//                someValue = "first"
//                break;
//        }
//    }






//    anchor свойства можно применять нормально только если у элемента заданы ширина и выоста,
//    поэтому применяя к item не забывайте про это



      // second screen
//    ConnectingItem {

//    }



//    Message {

//    }

//        Searchbar {

//        }




}






















