import Quickshell
import Quickshell.Widgets
import QtQuick
import "modules" // so we can import Bar.qml

ShellRoot {
    // Root of your shell environment
    PanelWindow {
        id: topBar
        anchors {
            top: true
            left: true
            right: true
        }
        height: 36
        color: Qt.rgba(0, 0, 0, 0.3)

        Bar {
            anchors.fill: parent
        }
    }
}

