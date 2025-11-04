# README penaltee
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

The MaterialApp widget serves as the main entry point for a Flutter app that follows Material Design, providing essential features like theming, routing, and navigation. It manages the app’s overall structure, including colors, fonts, and page transitions, ensuring a consistent look throughout the app. This widget is often used as the root widget because it sets up the environment needed for Material Design components, allowing all child widgets to inherit the same theme and behavior. By using MaterialApp at the root, developers can easily build visually consistent and well-structured applications.


4. Explain the difference between StatelessWidget and StatefulWidget. When would you choose one over the other?

A StatelessWidget is a widget that does not store or depend on any data that can change during the app’s runtime. Once it’s built, its appearance and behavior remain fixed unless it’s rebuilt from outside due to changes in its parent widget. Examples include static UI elements like text labels, icons, or simple layouts. In contrast, a StatefulWidget can change its appearance or behavior dynamically based on user interaction, internal variables, or asynchronous data updates. It is paired with a State object that holds mutable data and can trigger a rebuild when that data changes. You would use a StatelessWidget for content that never changes, such as static text or decorative elements, and a StatefulWidget when you need interactivity or updates, such as a form input, counter, or toggle button.


5. What is BuildContext and why is it important in Flutter? How is it used in the build method?

BuildContext is an object that provides information about where a widget is located within the widget tree. It acts as a link between the widget and the rest of the tree, giving access to resources such as the app’s theme, size information, and navigation. BuildContext is important because it allows widgets to interact with their surroundings—for example, fetching theme colors using Theme.of(context) or showing a SnackBar using ScaffoldMessenger.of(context).
Inside the build() method, the context parameter is passed automatically, and it represents the location of that specific widget in the tree at the time it’s being built. This means you can use context to look up inherited data from parent widgets, navigate between screens, or rebuild parts of the UI based on where the widget is placed. In short, BuildContext helps Flutter understand each widget’s position and enables communication throughout the widget hierarchy.


6. Explain the concept of a “hot reload” in Flutter and how it differs from a “hot restart”.

Hot reload is a feature that allows to quickly inject code changes into a running app without restarting the entire application. It is really helpful when working on the user interface(UI) as we can make changes and see the effects almost instantly. Hot Reload preserves the app’s state without losing data or restarting the flow of the app.
When using hot reload, Flutter pushes the code changes into the Dart Virtual Machine (VM). The framework then rebuilds the widget tree to reflect the latest changes without reinitializing the entire app. This makes hot reload especially useful for UI changes, as it quickly updates how the app looks.

Hot restart is a feature that reloads the app from scratch. It’s similar to completely restarting the app, but it does so much faster than a full rebuild. Unlike hot reload, hot restart clears the app’s state and starts it from the initial state.
When using Hot Restart, Flutter reinitializes the app. All static variables and current states are reset, and the app loads from the main() function. This is useful when you need to apply changes that require the app to start fresh, such as modifications to state management or global variables.

In conclusion, hot reload keeps the app’s state intact while reflecting UI and logic changes instantly, while hot restart refreshes the entire app environment, applying startup and global updates.