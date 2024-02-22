# Part XV: GUI Programming <a id="15-gui"></a>

1. [Tkinter](#tkinter)
2. [PyQT](#pyqt)
3. [wxPython](#wxpython)
4. [Kivy](#kivy)
5. [PySimpleGUI](#pysimplegui)

_Graphical User Interface_ (GUI) programming is a way to interact with a computer using a mouse, keyboard, and other input devices. GUIs are used in almost every application, from web browsers to video games.

## 1. Tkinter <a id="tkinter"></a>

[Tkinter](https://docs.python.org/3/library/tkinter.html) is a standard GUI (Graphical User Interface) toolkit for Python. It is one of the most common ways to create graphical applications quickly and easily with Python. Tkinter is included with most Python installations, so there's usually no need to install anything extra to get started.

_Core Concepts:_

- **Tkinter Module:** This is the interface to the Tk GUI toolkit. It provides various widgets and controls such as buttons, labels, text boxes, checkboxes, and many more that are used to build a GUI application.
- **Widgets:** In Tkinter, every element of the GUI (like buttons, labels, text fields) is called a Widget. These are the building blocks of a GUI application.
- **Window:** The main GUI application window that hosts all other widgets.
- **Event Loop:** Tkinter applications run an event loop (mainloop) to wait for and respond to user actions (events).

_Why Use Tkinter?_

- **Ease of Use:** Tkinter is straightforward and easy to understand, making it an excellent choice for beginners.
- **Bundled with Python:** It comes with Python, so there's no need to install anything extra to start building simple GUI applications.
- **Sufficient for Basic Applications:** For simple applications and tools, Tkinter provides enough widgets and functionality.
- **Cross-Platform:** Applications built with Tkinter can run on Windows, macOS, and Linux without modification.

However, for more complex applications with modern UI requirements, other GUI frameworks like PyQt or Kivy might be more appropriate due to their advanced features and styling options.


```python
%%script false --no-raise-error  # This cell is not executed

import tkinter as tk


def update_label():
    label.config(text="Hello, Tkinter!")


root = tk.Tk()
root.title("Tkinter Example")

label = tk.Label(root, text="Press the button...")
label.pack()

button = tk.Button(root, text="Click me", command=update_label)
button.pack()

root.mainloop()
```

## 2. PyQT <a id="pyqt"></a>

[PyQt](https://riverbankcomputing.com/software/pyqt/) is a set of Python bindings for The Qt Company's Qt application framework. It is one of the most powerful and popular choices for developing graphical user interfaces (GUIs) and for creating cross-platform applications. PyQt combines the best of Python and Qt, bringing the flexibility of Python and the extensive range of Qt libraries and tools for application development.

_Core Features:_

- **Rich Set of Widgets:** PyQt provides a wide range of standard widgets and controls such as buttons, sliders, text boxes, and complex widgets like calendars, 3D renderers, or web browsers.
- **Advanced Graphics and Animation:** Through Qt's graphics and animation APIs, PyQt applications can include complex graphical effects and animations.
- **Database Support:** PyQt offers support for SQL databases through Qt's SQL module, allowing applications to interact with databases seamlessly.
- **Network Support:** It includes classes for network programming, enabling applications to communicate over TCP/IP, HTTP, and other protocols.
- **Cross-Platform:** PyQt applications can run on various operating systems, including Windows, macOS, and Linux, with minimal to no changes in the codebase.

_Why Use PyQt?_

- **Comprehensive:** PyQt offers a vast array of functionalities and modules, making it suitable for developing both simple and complex applications.
- **Professional and Modern UIs:** The framework supports advanced UI and UX elements, allowing for the creation of professional-looking applications.
- **Strong Community and Support:** Qt has a large community and extensive documentation, which is beneficial for developers seeking support or learning resources.
- **Commercial and GPL Licensing:** PyQt is available under the GPL and a commercial license, making it suitable for both open-source projects and proprietary software.

Given its comprehensive feature set and flexibility, PyQt is an excellent choice for developers looking to create feature-rich, cross-platform applications with Python.


```python
%%script false --no-raise-error  # This cell is not executed

import sys

from PyQt5.QtWidgets import QApplication, QLabel, QPushButton, QVBoxLayout, QWidget


def on_button_clicked():
    label.setText("Hello, PyQt!")


app = QApplication(sys.argv)

window = QWidget()
window.setWindowTitle("PyQt Example")

layout = QVBoxLayout()

label = QLabel("Press the button...")
layout.addWidget(label)

button = QPushButton("Click me")
button.clicked.connect(on_button_clicked)
layout.addWidget(button)

window.setLayout(layout)
window.show()

sys.exit(app.exec_())
```

## 3. wxPython <a id="wxpython"></a>

[wxPython](https://wxpython.org/index.html) is a cross-platform GUI toolkit for the Python programming language. It allows Python programmers to create programs with a robust, highly functional graphical user interface, simply and easily. It is implemented as a set of Python extensions, wrapping the native GUI components of the underlying platform, which means that applications built with wxPython will have a native appearance on all supported platforms.

_Core Features:_

- **Native Look and Feel:** wxPython uses the native GUI controls on whichever platform it is run, ensuring that applications will have the look and feel that users expect.
- **Rich Set of Widgets:** It provides a wide variety of widgets (controls) that can be used to build complex user interfaces, including standard items like buttons, text boxes, and menus, as well as more specialized controls like tree views, list controls, and HTML viewers.
- **Advanced Graphics Support:** Through wxGraphicsContext, it offers advanced 2D drawing capabilities. Additionally, integration with libraries such as OpenGL for 3D graphics is possible for more complex graphical applications.
- **Custom Widget Development:** Developers can create custom widgets and controls to fit their application's specific needs.
- **Cross-Platform:** wxPython applications can run on Windows, macOS, and Linux with minimal or no changes to the source code.

_Why Use wxPython?_

- **Native Look and Feel:** Applications built with wxPython look and behave like native applications on the platform where they are run.
- **Community and Support:** wxPython has a supportive community and extensive documentation, making it accessible for both beginners and experienced developers.
- **Flexibility:** The ability to create custom controls and use advanced graphics makes wxPython suitable for building a wide range of applications.
- **Open Source:** wxPython is open source and freely available for use, even in commercial applications.

wxPython is an excellent choice for developers looking to create cross-platform desktop applications with Python, especially when a native look and feel is important.


```python
%%script false --no-raise-error  # This cell is not executed

import wx  # pip install wxPython


class MyFrame(wx.Frame):
    def __init__(self):
        super().__init__(parent=None, title="wxPython Example")
        self.panel = wx.Panel(self)

        self.label = wx.StaticText(
            self.panel, label="Press the button...", pos=(20, 20)
        )
        self.button = wx.Button(self.panel, label="Click Me", pos=(20, 50))

        self.button.Bind(wx.EVT_BUTTON, self.on_button_click)

        self.Show()

    def on_button_click(self, event):
        self.label.SetLabel("Hello, wxPython!")


if __name__ == "__main__":
    app = wx.App(False)
    frame = MyFrame()
    app.MainLoop()
```

### 4. Kivy <a id="kivy"></a>

[Kivy](https://kivy.org/) is an open-source Python library for developing multitouch application software with a natural user interface (NUI). It is designed to allow the quick and easy creation of applications that run on Windows, Linux, MacOS, Android, and iOS. The main goal of Kivy is to provide a framework for developing applications that take advantage of various input devices, such as touchscreens, multi-touch displays, mice, keyboards, and more.

_Core Features:_

- **Cross-platform:** Kivy applications can run on multiple platforms without requiring platform-specific code, making it a great choice for developing applications that need to operate across various devices.
- **Multitouch Support:** One of the distinguishing features of Kivy is its built-in support for multitouch events, allowing developers to create applications that can handle complex touch interactions.
- **Flexible and Customizable:** Kivy allows for the creation of custom widgets and supports a wide range of graphical effects, animations, and transitions. This flexibility lets developers design unique user interfaces.
- **GPU Accelerated:** Kivy leverages the GPU (Graphics Processing Unit), which makes it capable of rendering fast graphics. It uses OpenGL ES 2, allowing for smooth animations and transitions in applications.
- **Extensive Widget Library:** It comes with a rich set of pre-built widgets, including buttons, sliders, text inputs, and more, that can be easily customized and extended.
- **Kivy Language (KV):** A domain-specific language for designing user interfaces. This language makes it easier to bind logic and layout, helping to keep code more organized and readable.

_Why Use Kivy?_

- **Cross-Platform Development:** Kivy is an excellent choice for developing applications that need to run on multiple platforms, including mobile devices, with minimal changes to the codebase.
- **Rapid Development:** The framework supports rapid development with its easy-to-use widgets and the KV language, enabling quick prototyping and iterations.
- **Multitouch and NUI Support:** For projects requiring advanced touch interaction or novel user interface approaches, Kivy provides a robust set of capabilities out of the box.
- **Open Source:** Being open source, it has the support of a vibrant community that contributes to its development and provides support through forums and documentation.


```python
%%script false --no-raise-error  # This cell is not executed because it will raise OSError in Jupyter Notebook

from kivy.app import App  # pip install kivy
from kivy.uix.button import Button


class TestApp(App):
    def build(self):
        self.button = Button(text="Press Me")
        self.button.bind(on_press=self.on_button_press)
        return self.button

    def on_button_press(self, instance):
        instance.text = "You Pressed Me!"


if __name__ == "__main__":
    TestApp().run()
```

### 5. PySimpleGUI <a id="pysimplegui"></a>

[PySimpleGUI](https://docs.pysimplegui.com/en/latest/) is a Python library designed to make the process of creating graphical user interfaces (GUI) more accessible and straightforward. It acts as a wrapper around other Python GUI frameworks like Tkinter, Qt (PyQt5, PySide2), and WxPython, allowing developers to leverage the strengths of these underlying frameworks with a more simplified and intuitive API. PySimpleGUI's philosophy is to enable developers, especially those new to GUI development, to quickly create windows with elements such as text, images, buttons, and inputs with minimal code.

_Core Features:_

- **Simplicity:** One of the primary goals of PySimpleGUI is to be easy to use and learn. It achieves this by providing a straightforward, Pythonic API that reduces the complexity involved in GUI creation.
- **Cross-Platform:** Since PySimpleGUI can run on top of multiple GUI frameworks, it inherits their cross-platform capabilities, making it possible to develop applications that work on Windows, Linux, macOS, and even web browsers (through the Remi integration).
- **Customizable:** Despite its focus on simplicity, PySimpleGUI offers enough flexibility to customize the appearance and behavior of GUI elements to fit the needs of a wide range of applications.
- **Rich Widget Set:** It supports a comprehensive set of widgets, including text, input boxes, sliders, buttons, charts, and more, covering the needs of most basic to moderately complex GUI applications.

_Why Use PySimpleGUI?_

- **Rapid Development:** PySimpleGUI's straightforward syntax allows for quick development of simple to moderately complex GUIs.
- **Ease of Learning:** For newcomers to GUI programming or those who prefer a more Pythonic approach, PySimpleGUI offers an accessible entry point.
- **Versatility:** The ability to run atop multiple GUI backends means developers can prototype in one and switch to another for deployment, taking advantage of each's unique strengths.
- **Suitable for Both Beginners and Professionals:** While it's an excellent tool for beginners due to its simplicity, PySimpleGUI is also powerful enough for professionals to build and deploy full-fledged applications.

PySimpleGUI strikes a balance between ease of use and flexibility, making it an appealing choice for both newcomers to Python GUI programming and those looking for a quick way to develop applications across different platforms.


```python
%%script false --no-raise-error  # This cell is not executed

import PySimpleGUI as sg

layout = [[sg.Text("Hello from PySimpleGUI")], [sg.Button("OK")]]

# Create the window
window = sg.Window("Demo", layout)

# Create an event loop
while True:
    event, values = window.read()
    # End program if user closes window or
    # presses the OK button
    if event == sg.WINDOW_CLOSED or event == "OK":
        break

window.close()
```
