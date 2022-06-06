import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQml 2.12

Window {
    id: mainWindow
    visible: true
    visibility: "FullScreen"
    title: qsTr("smart-home-ui")
//    color: "black"

    Rectangle {
        anchors.fill: parent
        anchors.margins: 5
//        border.color: "royalblue"
//        border.width: 1
//        radius: 8
//        color: "#101010"
        antialiasing: true
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#494c51" }
//            GradientStop { position: 0.8; color: "#1f2226" }
            GradientStop { position: 1.0; color: "#1a1d21" }
        }

        Text {
            id: currentTime
            x: 30
            y: 20
            font.bold: true
            font.pixelSize: 20
            color: "white"
            text: { new Date().toLocaleTimeString(Qt.locale("ru_RU"), "H:mm") }
        }

        Text {
            id: currentDate
            anchors.left: currentTime.right
            anchors.top: currentTime.top
            anchors.leftMargin: 30
            font.bold: true
            font.pixelSize: 20
            color: "#0bdaf6"
            text: { new Date().toLocaleDateString(Qt.locale("ru_RU"), "d MMM") }
        }

        Timer {
            interval: 10000
            repeat: true
            running: true

            onTriggered: {
                currentTime.text = new Date().toLocaleTimeString(Qt.locale("ru_RU"), "H:mm")
                currentDate.text = new Date().toLocaleDateString(Qt.locale("ru_RU"), "d MMM")
            }
        }

//        ColumnLayout {
//            anchors.top: parent.top
//            anchors.left: parent.left
//            anchors.right: parent.right
//            anchors.margins: 7
//            spacing: 5

//            Rectangle {
//                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//                Layout.preferredWidth: 150
//                Layout.preferredHeight: 80
//                border.color: "seagreen"
//                border.width: 1
//                radius: 6
//                color: "transparent"
//                antialiasing: true
//            }

//            Rectangle {
//                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//                Layout.preferredWidth: 150
//                Layout.preferredHeight: 80
//                border.color: "seagreen"
//                border.width: 1
//                radius: 6
//                color: "transparent"
//                antialiasing: true
//            }

//            Text {
//                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//                Layout.preferredWidth: contentWidth
//                Layout.preferredHeight: contentHeight
//                color: "white"
//                text: "W: " + mainWindow.width + " H: " + mainWindow.height
//            }

//        }
    }
}
