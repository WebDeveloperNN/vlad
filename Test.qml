import QtQuick 2.0


Rectangle {

    color: "red"
   width: 100
   height: 100

   MouseArea {
       anchors.fill: parent
       onClicked : console.log("work")
   }


   Text {
       id: name
       text: parent.text || "test"
   }
}



