import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts


Window {
    width: 640
    height: 480
    visible: true
    title: "Registration Form"

    Text{
        text: Clock.current_time
        font.pixelSize: 30
    }

    ColumnLayout{
        width: parent.width / 2
        anchors.centerIn: parent

        TextField{
            id: button_color
            Layout.fillWidth: true
            placeholderText: "Button color"
        }

        TextField{
            id: button_text
            Layout.fillWidth: true
            placeholderText: "Button text"
        }

        TextField{
            id: button_text_color
            Layout.fillWidth: true
            placeholderText: "Button text color"
        }

        TextField{
            id: on_clicked_text
            Layout.fillWidth: true
            placeholderText: "On clicked Text"
        }

        TextField{
            id: bg_color
            Layout.fillWidth: true
            placeholderText: "Window bg color"
        }
    }

    Button{
        id: save_button
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20
        width: 100
        height: 50
        text: "Save"

        onClicked: Editor.button_clicked_action()


    Button{
        width: 100
        height: 50
        x:10
        y:-60
        anchors.right: save_button.left
        anchors.margins: 200



    }
    }
}





