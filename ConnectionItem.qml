import QtQuick 2.0
import QtQuick.Controls 2.12
//import com.ics.demo 1.0

Item {
    id: root
//    property alias text: connection_result.text
    Button {
        id: b_connect_db
        text: "Log in"
        anchors.centerIn: root
        onClicked: {
            // check auth
            // if ok make db connect
            load_page("searchbarPage");
        }

    }


//    Text {
//        id: connection_result
//        text: "Show all info"
//        color: "blue"
//        anchors.top: b_connect_db.bottom
//        anchors.horizontalCenter: b_connect_db.horizontalCenter
//        anchors.topMargin: 20

//        MouseArea {
//            anchors.fill: connection_result
//            onClicked: {
//                console.log("all info")
//            }
//        }
//    }
}
