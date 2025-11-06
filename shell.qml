//@ pragma UseQApplication 

import QtQuick
import Quickshell
import "./modules/bar.qml"

shellroot {

    Loader{
        active: true
        sourceComponent: Bar {}
    }
}

