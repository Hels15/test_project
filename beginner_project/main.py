# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QObject, Property, Signal

class Window_editor(QObject):
    def __init__(self):
        super().__init__()

        self.button_text = "Hello"
        self.button_color = "red"
        self.button_text_color = "blue"
        self.on_clicked_text = "Click!!"
        self.window_bg_color  = "grey"



if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    editor = Window_editor()


    context = engine.rootContext()
    context.setContextProperty("Editor", editor)




    engine.load(os.fspath(Path(__file__).resolve().parent / "main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
