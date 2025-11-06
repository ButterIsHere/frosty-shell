import QtQuick

Text {
    id: clock
    color: "white"
    font.pixelSize: 18
    text: Qt.formatDateTime(new Date(), "hh:mm")
    font.family: "JetBrains Mono"

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: clock.text = Qt.formatDateTime(new Date(), "hh:mm")
    }
}

