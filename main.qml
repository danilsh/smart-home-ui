import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQml 2.12

Window {
    id: mainWindow
    visible: true
    visibility: "FullScreen"
    title: qsTr("smart-home-ui")
    color: "black"

    Rectangle {
        x: 0
        y: 0
        width: 400
        height: 240
        antialiasing: true
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#494c51" }
            GradientStop { position: 1.0; color: "#1a1d21" }
        }

        Text {
            id: currentTime
            x: 15
            y: 10
            font.bold: true
            font.pixelSize: 10
            color: "white"
            text: { new Date().toLocaleTimeString(Qt.locale("ru_RU"), "H:mm") }
        }

        Text {
            id: currentDate
            anchors.left: currentTime.right
            anchors.top: currentTime.top
            anchors.leftMargin: 15
            font.bold: true
            font.pixelSize: 10
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

        // Bathroom 2
        Text {
            id: bathroom2Label
            x: 18
            y: 35
            font.pixelSize: 12
            color: "#7e8082"
            text: "Ванная 2"
        }

        Image {
            id: bathroom2TempImage
            x: 80
            anchors.verticalCenter: bathroom2Label.verticalCenter
            anchors.leftMargin: 10
            width: 25
            height: 25
            source: "qrc:/high-temperature-cold-hot-temperature-svgrepo-com.svg"
            antialiasing: true
        }

        Text {
            id: bathroom2Temperature
            anchors.left: bathroom2TempImage.right
            anchors.verticalCenter: bathroom2TempImage.verticalCenter
            anchors.leftMargin: 00
            font.pixelSize: 18
            color: "white"
            text: "+27"
        }

        Image {
            id: bathroom2HumidityImage
            x: 140
            anchors.verticalCenter: bathroom2Label.verticalCenter
            anchors.leftMargin: 10
            width: 25
            height: 25
            source: "qrc:/humidity-svgrepo-com.svg"
            antialiasing: true
        }

        Text {
            id: bathroom2Humidity
            anchors.left: bathroom2HumidityImage.right
            anchors.verticalCenter: bathroom2HumidityImage.verticalCenter
            anchors.leftMargin: 00
            font.pixelSize: 18
            color: "white"
            text: "80"
        }

        // Garage
        Text {
            id: garage2Label
            x: 18
            y: 75
            font.pixelSize: 12
            color: "#7e8082"
            text: "Гараж"
        }

        Image {
            id: garage2TempImage
            x: 80
            anchors.verticalCenter: garage2Label.verticalCenter
            anchors.leftMargin: 10
            width: 25
            height: 25
            source: "qrc:/high-temperature-cold-hot-temperature-svgrepo-com.svg"
            antialiasing: true
        }

        Text {
            id: garage2Temperature
            anchors.left: garage2TempImage.right
            anchors.verticalCenter: garage2TempImage.verticalCenter
            anchors.leftMargin: 00
            font.pixelSize: 18
            color: "white"
            text: "+27"
        }

        Image {
            id: garage2HumidityImage
            x: 140
            anchors.verticalCenter: garage2Label.verticalCenter
            anchors.leftMargin: 10
            width: 25
            height: 25
            source: "qrc:/humidity-svgrepo-com.svg"
            antialiasing: true
        }

        Text {
            id: garage2Humidity
            anchors.left: garage2HumidityImage.right
            anchors.verticalCenter: garage2HumidityImage.verticalCenter
            anchors.leftMargin: 00
            font.pixelSize: 18
            color: "white"
            text: "80"
        }

    }
}
