# penaltee
Name: Shelia Vellicita

NPM: 2406453606

Class: KKI


ASSIGNMENT 1 

1. Explain what a widget tree is in Flutter and how parent-child relationships work between widgets.

In Flutter, a widget tree is a hierarchical structure that represents the user interface (UI)of an application, where each node is a widget and the edges represent parent-child relationships. Widgets describe what their view should look like given their current configuration and state. The structure starts from a root widget (like MaterialApp or CupertinoApp) and branches out into other widgets like Scaffold, AppBar, Text, Column, etc. The tree describes how widgets are nested within one another, and Flutter uses this hierarchy to determine how the interface should be built, laid out, and rendered on the screen.
The parent-child relationship defines how widgets are nested and interact within the widget tree. The parent widget acts as a container or controller for one or more child widgets, determining how they are arranged, styled, and constrained. For example, a Column widget as the parent arranges its child widgets vertically, while a Container can apply padding, alignment, or background color to its child. The child widget, in turn, depends on the parent for layout rules but can still define its own properties. This relationship makes the UI structure modular and organized, where each widget focuses on a specific role within the hierarchy.


2. List all the widgets you used in this project and explain their functions.

In this project, the main widget used is MaterialApp, which serves as the root of the application and defines the overall theme and title. Inside it, the Scaffold widget provides the basic page structure, including an AppBar at the top and a body area for the main content. The AppBar displays the title “Penaltee” and uses the app’s primary color from the theme.
Inside the body, several layout widgets organize the content. Padding adds space around the elements, while Column, Row, and Center arrange widgets vertically, horizontally, and in the middle of the screen. SizedBox is used to create space between sections. To display personal information neatly, the app uses a combination of Card and Container widgets, which give a clean, elevated look with controlled width and padding.
For the menu section, the GridView.count widget is used to show clickable menu items in a three-column grid layout. Each menu item is represented using a custom ItemCard widget, which combines Material, InkWell, Icon, and Text widgets. InkWell detects taps, while SnackBar provides quick feedback at the bottom of the screen when a user presses a card. Additionally, the InfoCard widget displays simple cards showing the user’s name, NPM, and class. Together, these widgets build a structured, responsive, and interactive home page interface.


3. What is the function of the MaterialApp widget? Explain why this widget is often used as the root widget.




4. Explain the difference between StatelessWidget and StatefulWidget. When would you choose one over the other?




5. What is BuildContext and why is it important in Flutter? How is it used in the build method?




6. Explain the concept of a “hot reload” in Flutter and how it differs from a “hot restart”.