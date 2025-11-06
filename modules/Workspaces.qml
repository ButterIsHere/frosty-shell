// ~/.config/quickshell/modules/Workspaces.qml
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

RowLayout {
    id: workspaces
    spacing: 8
    height: 30

    // The currently active workspace (highlighted)
    property int activeWorkspace: 1

    // List of available workspaces
    property var workspaceList: [1, 2, 3, 4, 5, 6, 7, 8, 9]

    // Create a box for each workspace
    Repeater {
        model: workspaceList.length

        Rectangle {
            width: 22
            height: 22
            radius: 6
            color: index + 1 === workspaces.activeWorkspace ? "#ffffff" : "#555555"
            opacity: 0.8

            Text {
                anchors.centerIn: parent
                text: index + 1
                color: index + 1 === workspaces.activeWorkspace ? "#000000" : "#ffffff"
                font.pixelSize: 11
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Tell Hyprland to switch workspace
                    Qt.openUrlExternally("hyprctl dispatch workspace " + (index + 1))
                    // Visually update the highlight
                    workspaces.activeWorkspace = index + 1
                }
            }
        }
    }
}

