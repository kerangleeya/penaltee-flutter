# README penaltee
Name: Shelia Vellicita<br>
NPM: 2406453606<br>
Class: KKI

---

## ASSIGNMENT 7 

1. Explain what a widget tree is in Flutter and how parent-child relationships work between widgets.

In Flutter, a widget tree is a hierarchical structure that represents the user interface (UI)of an application, where each node is a widget and the edges represent parent-child relationships. Widgets describe what their view should look like given their current configuration and state. The structure starts from a root widget (like MaterialApp or CupertinoApp) and branches out into other widgets like Scaffold, AppBar, Text, Column, etc. The tree describes how widgets are nested within one another, and Flutter uses this hierarchy to determine how the interface should be built, laid out, and rendered on the screen.<br>
The parent-child relationship defines how widgets are nested and interact within the widget tree. The parent widget acts as a container or controller for one or more child widgets, determining how they are arranged, styled, and constrained. For example, a Column widget as the parent arranges its child widgets vertically, while a Container can apply padding, alignment, or background color to its child. The child widget, in turn, depends on the parent for layout rules but can still define its own properties. This relationship makes the UI structure modular and organized, where each widget focuses on a specific role within the hierarchy.


2. List all the widgets you used in this project and explain their functions.

In this project, the main widget used is MaterialApp, which serves as the root of the application and defines the overall theme and title. Inside it, the Scaffold widget provides the basic page structure, including an AppBar at the top and a body area for the main content. The AppBar displays the title “Penaltee” and uses the app’s primary color from the theme.<br>
Inside the body, several layout widgets organize the content. Padding adds space around the elements, while Column, Row, and Center arrange widgets vertically, horizontally, and in the middle of the screen. SizedBox is used to create space between sections. To display personal information neatly, the app uses a combination of Card and Container widgets, which give a clean, elevated look with controlled width and padding.<br>
For the menu section, the GridView.count widget is used to show clickable menu items in a three-column grid layout. Each menu item is represented using a custom ItemCard widget, which combines Material, InkWell, Icon, and Text widgets. InkWell detects taps, while SnackBar provides quick feedback at the bottom of the screen when a user presses a card. Additionally, the InfoCard widget displays simple cards showing the user’s name, NPM, and class. Together, these widgets build a structured, responsive, and interactive home page interface.


3. What is the function of the MaterialApp widget? Explain why this widget is often used as the root widget.

The MaterialApp widget serves as the main entry point for a Flutter app that follows Material Design, providing essential features like theming, routing, and navigation. It manages the app’s overall structure, including colors, fonts, and page transitions, ensuring a consistent look throughout the app. This widget is often used as the root widget because it sets up the environment needed for Material Design components, allowing all child widgets to inherit the same theme and behavior. By using MaterialApp at the root, developers can easily build visually consistent and well-structured applications.


4. Explain the difference between StatelessWidget and StatefulWidget. When would you choose one over the other?

A StatelessWidget is a widget that does not store or depend on any data that can change during the app’s runtime. Once it’s built, its appearance and behavior remain fixed unless it’s rebuilt from outside due to changes in its parent widget. Examples include static UI elements like text labels, icons, or simple layouts. In contrast, a StatefulWidget can change its appearance or behavior dynamically based on user interaction, internal variables, or asynchronous data updates. It is paired with a State object that holds mutable data and can trigger a rebuild when that data changes. You would use a StatelessWidget for content that never changes, such as static text or decorative elements, and a StatefulWidget when you need interactivity or updates, such as a form input, counter, or toggle button.


5. What is BuildContext and why is it important in Flutter? How is it used in the build method?

BuildContext is an object that provides information about where a widget is located within the widget tree. It acts as a link between the widget and the rest of the tree, giving access to resources such as the app’s theme, size information, and navigation. BuildContext is important because it allows widgets to interact with their surroundings. For example, fetching theme colors using Theme.of(context) or showing a SnackBar using ScaffoldMessenger.of(context).<br>
Inside the build() method, the context parameter is passed automatically, and it represents the location of that specific widget in the tree at the time it’s being built. This means you can use context to look up inherited data from parent widgets, navigate between screens, or rebuild parts of the UI based on where the widget is placed. In short, BuildContext helps Flutter understand each widget’s position and enables communication throughout the widget hierarchy.


6. Explain the concept of a “hot reload” in Flutter and how it differs from a “hot restart”.

Hot reload is a feature that allows to quickly inject code changes into a running app without restarting the entire application. It is really helpful when working on the user interface(UI) as we can make changes and see the effects almost instantly. Hot Reload preserves the app’s state without losing data or restarting the flow of the app.<br>
When using hot reload, Flutter pushes the code changes into the Dart Virtual Machine (VM). The framework then rebuilds the widget tree to reflect the latest changes without reinitializing the entire app. This makes hot reload especially useful for UI changes, as it quickly updates how the app looks.<br>
Hot restart is a feature that reloads the app from scratch. It’s similar to completely restarting the app, but it does so much faster than a full rebuild. Unlike hot reload, hot restart clears the app’s state and starts it from the initial state.<br>
When using Hot Restart, Flutter reinitializes the app. All static variables and current states are reset, and the app loads from the main() function. This is useful when you need to apply changes that require the app to start fresh, such as modifications to state management or global variables.<br>
In conclusion, hot reload keeps the app’s state intact while reflecting UI and logic changes instantly, while hot restart refreshes the entire app environment, applying startup and global updates.


---

## ASSIGNMENT 8

1. Explain the difference between Navigator.push() and Navigator.pushReplacement() in Flutter. In what context of your application is each best used?

Navigator.push() is used to move to a new page while still keeping the previous page in the navigation stack, which means the user can press the back button to return to the earlier screen. Meanwhile, Navigator.pushReplacement() replaces the current page entirely, removing it from the stack so that the user cannot go back.

2. How do you use hierarchy widget like Scaffold, AppBar, dan Drawer to build a consistent page structure in the your application?

Widgets like Scaffold, Appbar, and Drawer help create a consistent structure across all screens of the application. The Scaffold provides a basic layout framework that includes areas for the navigation drawer, top bar, and main content. The Appbar gives each page a clear and familiar title area that strengthens page identity, while the Drawer makes navigation between pages consistent and easily accessible. By using this same arrangement across multiple screens, the application feels unified and predictable to the user. Hence, it will enhance the usability and improve the overall visual coherence.

3. In the context of user interface design, what do you think is the advantages of using layout widget like Padding, SingleChildScrollView, and ListView when displaying form elements? Provide usage examples from your application.

Layout widgets like Padding, SingleChildScrollView, and ListView are essential in making forms readable, comfortable to interact with, and responsive to screen size. Padding ensures that input fields and text are not cramped, improving both visual clarity and touch accuracy. SingleChildScrollView allows the entire form to scroll when the screen is small or when the keyboard is open, preventing overflow errors. On the other hand, ListView is efficient for displaying longer or dynamic forms because it renders only the visible fields at a time. In the application, these widgets ensure that forms such as the product creation form remain clean and easy to fill in regardless of screen size.

4. How do you set the color theme so that your Football Shop have a visual identity that is consistent with the shop brand.

In the main.dart, we can set the theme using ColorScheme or ThemeDara in the MaterialApp widget, For this application, I used ColorScheme.fromSeed(seedColor: Colors.red.shade700). This establishes red as the brand color for Penaltee. By consistently using Theme.of(context).colorScheme.primary and secondary across buttons, AppBars, and highlights, the app develops a unified visual identity. This avoids random colors in different screens and ensures the interface feels professional and aligned with the brand.


---

## ASSIGNMENT 9

1. Explain why we need to create a Dart model when fetching/sending JSON data. What are the consequences of directly mapping Map<String, dynamic> without using a model (in terms of type validation, null safety, and maintainability)?

We create a Dart model so that our JSON data has a clear, typed “shape” in the Flutter code. A model class defines exactly what fields exist, what their types are, and which are nullable or required. This gives us compile-time checks, IDE autocomplete, and makes refactoring safer. If we only pass around Map<String, dynamic> everywhere, everything becomes dynamic, so mistakes like treating a String as an int, or assuming a field is non-null when it can actually be null, will only be caught at runtime or even crash the app. It also becomes very easy to mistype keys ("usernmae" instead of "username") without noticing. With a model, we centralize fromJson/toJson logic, enforce null-safety using Dart’s type system, and keep the codebase readable and maintainable as the API grows or changes. Without models, the app quickly turns into scattered maps, manual casting, and fragile code that’s hard to debug and modify.

2. What is the purpose of the http and CookieRequest packages in this assignment? Explain the difference between their roles.

The http package is a general-purpose HTTP client used to send GET/POST/PUT/DELETE requests to any API. It handles low-level networking, such as opening connections, sending requests, getting responses, and letting us read the response body. It does not, by itself, manage authentication cookies or sessions. On the other hand, CookieRequest is a higher-level helper from pbp_django_auth designed specifically to work with Django’s session-based authentication. It wraps HTTP calls but also stores and sends cookies, like sessionid, keeps track of whether the user is logged in, and provides login/logout/register helpers that integrate with Django’s auth system. Thus, http is a generic network pipe while CookieRequest is a session-aware client tailored for talking to Django with cookies.

3. Explain why the CookieRequest instance needs to be shared across all components in the Flutter application.

The CookieRequest instance needs to be shared across all components because it holds the authentication state and cookies for the current user session. When the user logs in, Django returns a session cookie, and CookieRequest stores it. Any subsequent request that should be “authenticated” must use that same instance so the cookie is automatically attached. If different parts of the app created their own separate CookieRequest objects, they wouldn’t share cookies or login state, so one screen might think the user is logged in while another behaves as if they are logged out. By providing a single CookieRequest instance at the top level and injecting it wherever needed, the entire app shares one consistent session and one source of truth for login status.

4. Explain the connectivity configuration required for Flutter to communicate with Django. Why do we need to add 10.0.2.2 to ALLOWED_HOSTS, enable CORS and SameSite/cookie settings, and add internet access permission in Android? What would happen if these configurations were not set correctly?

For Flutter to communicate with Django on the local machine, a few connectivity settings are necessary. The host 10.0.2.2 is a special IP that the Android emulator uses to refer to the computer’s localhost, so Django must allow this host by adding it to ALLOWED_HOSTS. Otherwise, Django will reject the request as coming from an unauthorized host. Because the Flutter app and Django server are technically on different “origins” (different host/port), we also need CORS enabled and configured to allow requests from the Flutter side, especially if we’re sending credentials. Cookie/SameSite settings must be loosened appropriately so that the Django session cookie (sessionid) can be sent and accepted by the app. If SameSite is too strict, cookies won’t be included and the user will never appear logged in. On the Android side, we must declare internet access permission in the manifest. Without it, the app simply cannot make network calls. If any of these are misconfigured, we can get errors like CORS blocking, 403/400 responses, cookies not being set or sent, or the app failing to connect at all (timeouts or network errors).

5. Describe the data transmission mechanism—from user input to being displayed in Flutter.

The data transmission flow typically goes by the user first fills in a form in Flutter. When they press submit, Flutter validates the input and then converts the data into a JSON structure, often by using a toJson() method on a Dart model. That JSON is sent via http or CookieRequest using an HTTP POST request to a Django endpoint. On the Django side, the view receives the request, parses the incoming JSON or form data, validates it using serializers/forms or manual checks, and then saves it into the database if it’s valid. Django then constructs a JSON response—maybe returning the newly created object or a success message. Flutter receives the response body, decodes the JSON into a Dart model using fromJson, updates the app state, and then rebuilds the UI to show the new data. The same pattern happens in reverse when fetching data. Flutter sends a GET, Django returns JSON, Flutter decodes it into models and displays it.

6. Explain the authentication mechanism for login, registration, and logout—from entering account data in Flutter to Django’s authentication process and displaying the menu in Flutter.

The authentication mechanism is a cycle involving Flutter, Django’s auth system, and cookies. For login, the user enters their username and password in Flutter. When they submit, CookieRequest sends these credentials usually via POST to a Django login endpoint. Django uses its authentication backend to check the credentials against the User model. If they are valid, Django creates a session, stores it server-side, and returns a response with a sessionid cookie. CookieRequest stores that cookie and marks the user as logged in. From then on, all requests made through that same CookieRequest automatically include the session cookie, so Django knows which user is making the request and can return user-specific data. For registration, Flutter sends the new account data to a registration endpoint, then Django validates, creates a new User, and may either log the user in directly or require a separate login step. For logout, Flutter calls a logout endpoint with CookieRequest then Django clears the session server-side and sends back a response, and CookieRequest clears its cookies and login flag. After that, Flutter updates the UI (like navigates back to the login page) because the global CookieRequest now indicates the user is no longer authenticated.

7. Explain how you implemented the checklist above step-by-step (not just following a tutorial).

To begin, I checked that my Django deployment was functioning correctly by opening the deployed base URL and testing all JSON endpoints directly in the browser/Postman. I ensured that the item JSON endpoint returned the correct fields and that authentication endpoints were reachable.<br>
After that, I implemented the login page with two text fields and a login button. Using CookieRequest.login(), I sent the credentials to Django’s /login/ endpoint and, if successful, redirected the user to the main menu page. I also wired the logout button to call Django’s /logout/ endpoint and return to the login screen.<br>
Next, I created a registration page in Flutter. I built a Form with input fields for username and password, then connected it to my Django /register/ endpoint using CookieRequest.postJson(). I handled the success/error responses and navigated users back to the login page after a successful registration.<br>
To integrate Django’s authentication system, I set up a global CookieRequest instance using Provider at the root of my Flutter app. This allowed all pages to share the same session cookie, meaning Django recognizes the user across requests.<br>
I then created a custom Dart model that mirrors my Django item model. I wrote the fromJson and toJson methods to match Django’s JSON structure, ensuring the fields name, price, description, thumbnail, category, and is_featured were included.<br>
With the model ready, I built the item list page. I fetched data from my deployed JSON endpoint using request.get(), converted each JSON object into my Dart model, and displayed each item using a card layout that shows all required fields.<br>
Next, I added navigation to a detail page. Each item card was wrapped in a tap gesture that pushed a new detail page. The detail page displayed all item attributes in full and included a back button using Navigator.pop().<br>
Finally, I implemented the user-specific filtering by coordinating both Django and Flutter. On the Django side, I modified the 'show_json' view to check for a query parameter '?me=true' and, if it is present and the user is authenticated, the view returns only the products that belong to 'request.user' using 'Product.objects.filter(user=request.user)'. Otherwise, it returns all products. On the Flutter side, I added a 'filterbyuser' flag to the 'ProductEntryListPage' and used it to control the URL that gets called. If the flag is true, Flutter sends the request to '/json/?me=true', and because 'CookieRequest' automatically includes the user’s session cookie, Django recognizes the logged-in user and returns only that user’s items. As a result, the item list page displays either all products or only the logged-in user’s products depending on the parameter passed to the page.
