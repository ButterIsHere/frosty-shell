import QtQuick
import QtQuick.Layouts
import "."
import "."

Rectangle {
    id: bar
    anchors.fill: parent
    color: "transparent"
    
    RowLayout {
        id: layout
        anchors.fill: parent
        anchors.margins: 6
        spacing: 12

        // Left
        RowLayout {
            id: leftSection
            Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft

            Workspaces { }
        }

        // Center
        Item {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

            Clock {
                anchors.centerIn: parent
            }
        }

        // Right
        RowLayout {
            id: rightSection
            Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

            Text {
                text: "Right side"
                color: "white"
                font.pixelSize: 14
                font.family: "JetBrains Mono" 
            }
        }
    }
}

