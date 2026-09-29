import QtQuick

Rectangle {
    color: Colors.background
    implicitWidth: child.implicitWidth
    radius: 30
    Text {
        id: child
        text: niri.focusedWindow?.title ?? "Desktop"
        anchors.verticalCenter: parent.verticalCenter
        topPadding: 2
        leftPadding: 10
        rightPadding: 10
        font.pixelSize: 16
        color: Colors.foreground
    }
}
