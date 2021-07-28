# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys,json


from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QObject, Property, Signal,Slot

class Window_editor(QObject):
    def __init__(self):
        super().__init__()

        self.button_text = "Hello"
        self.button_color = "red"
        self.button_text_color = "blue"
        self.on_clicked_text = "Click!!"
        self.window_bg_color  = "grey"

    @Slot(str,str,str,str,str)
    def save_action(self,button_color,button_text,button_text_color,on_clicked_text,bg_color):
        data = {
            "button_color": button_color,
            "button_text": button_text,
            "button_text_color": button_text_color,
            "on_clicked_text": on_clicked_text,
            "bg_color": bg_color
        }


        with open("data.json", "w") as f:
            json.dump(data,f)



class Form:
    def __init__(self):

        self.app = QGuiApplication(sys.argv)

        self.engine = QQmlApplicationEngine()



        self.context = self.engine.rootContext()
        self.editor = Window_editor()
        self.context.setContextProperty("Editor", self.editor)




        self.engine.load(os.fspath(Path(__file__).resolve().parent / "main.qml"))
        if not self.engine.rootObjects():
            sys.exit(-1)
        sys.exit(self.app.exec())
if __name__ == '__main__':
    Form()