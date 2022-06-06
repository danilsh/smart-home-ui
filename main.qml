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

        Image {
            id: tempImage
            x: 90
            y: 35
            width: 25
            height: 25
            source: "qrc:/high-temperature-cold-hot-temperature-svgrepo-com.svg"
            antialiasing: true
        }

        Image {
            id: humidityImage
            x: 140
            anchors.verticalCenter: tempImage.verticalCenter
            width: 25
            height: 25
            source: "qrc:/humidity-svgrepo-com.svg"
            antialiasing: true
        }

        // Bathroom 2
        Text {
            id: bathroom2Label
            x: 18
            y: 85
            font.pixelSize: 12
            color: "#7e8082"
            text: "Ванная 2"
        }

        Text {
            id: bathroom2Temperature
            anchors.horizontalCenter: tempImage.horizontalCenter
            anchors.verticalCenter: bathroom2Label.verticalCenter
            font.pixelSize: 18
            color: "white"
            text: "+27"
        }

        Text {
            id: bathroom2Humidity
            anchors.horizontalCenter: humidityImage.horizontalCenter
            anchors.verticalCenter: bathroom2Label.verticalCenter
            font.pixelSize: 18
            color: "deepskyblue"
            text: "80"
        }

        // Garage
        Text {
            id: garageLabel
            x: 18
            y: 115
            font.pixelSize: 12
            color: "#7e8082"
            text: "Гараж"
        }

        Text {
            id: garageTemperature
            anchors.horizontalCenter: tempImage.horizontalCenter
            anchors.verticalCenter: garageLabel.verticalCenter
            font.pixelSize: 18
            color: "white"
            text: "+17"
        }

        Text {
            id: garageHumidity
            anchors.horizontalCenter: humidityImage.horizontalCenter
            anchors.verticalCenter: garageLabel.verticalCenter
            font.pixelSize: 18
            color: "deepskyblue"
            text: "43"
        }

        // Weather
        Text {
            id: weatherLabel
            x: 18
            y: 155
            font.pixelSize: 14
            color: "#7e8082"
            text: "Погода"
        }

        Text {
            id: weatherTemperature
            anchors.horizontalCenter: tempImage.horizontalCenter
            anchors.verticalCenter: weatherLabel.verticalCenter
            font.pixelSize: 18
            color: "white"
            text: "+22"
        }

        Text {
            id: weatherHumidity
            anchors.horizontalCenter: humidityImage.horizontalCenter
            anchors.verticalCenter: weatherLabel.verticalCenter
            font.pixelSize: 18
            color: "deepskyblue"
            text: "54"
        }

        Image {
            id: weatherImage
            x: 190
            anchors.verticalCenter: weatherLabel.verticalCenter
            width: 25
            height: 25
            source: "qrc:/weather-svgrepo-com.svg"
            antialiasing: true
        }
    }
}
