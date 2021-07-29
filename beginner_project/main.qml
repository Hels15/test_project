import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.15
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

        onClicked: Editor.save_action(
                       button_color.text,
                       button_text.text,
                       button_text_color.text,
                       on_clicked_text.text,
                       bg_color.text)
    }

    Button{
        id:fileButton
        text: "Information"
        width: 100
        height: 50
        x:100
        y:340
        anchors.right: save_button.left
        anchors.margins: 200
        onClicked: popup.open()
    }



    Popup {
        id:popup
        x:100
        y:100
        width: 200
        height: 300
        modal: true
        focus: true
        contentItem:  Text{
            text: TextClass.text

        }


        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    }









}
