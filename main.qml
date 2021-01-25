import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: "ADRIAN"

    Row {
        id : row1
        anchors.centerIn: parent
        spacing: 20

         Rectangle {
             id: redRectId
             width: 150;
             height: 150;
             color: "red"
             radius: 20
             MouseArea {
                 anchors.fill: parent
                 onClicked: {
                    console.log("Clicked on red button")
                    textToShow = "red"
                 }

             }
          }

         Rectangle {
             id: greenRectId
             width: 150;
             height: 150;
             color: "green"
             radius: 20
             MouseArea {
                 anchors.fill: parent
                 onClicked: {
                    console.log("Clicked on green button")
                    textToShow = "green"
                 }

             }
          }

         Rectangle {
             id: blueRectId
            width: 150;
            height: 150;
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on blue botton")
                    textToShow = "blue"
                }
            }
         }

         Rectangle {
         id: textRectId
         width: 150;
         height: 150;
         color: "dodgerblue"
         radius: 100
         Text {
             id: textId
             anchors.centerIn: parent
             text: textToShow
         }
         MouseArea {
            anchors.fill: parent
            onClicked:  {
            console.log("Clicked on dodgerblue Rectangle")
            }
            }
         }

        }

}
