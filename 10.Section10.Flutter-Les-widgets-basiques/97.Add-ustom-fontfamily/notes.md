# Flutter

## 97. Add a Custom Font Family

Adding a custom font in Flutter allows you to create a unique look and feel for your app. Flutter supports custom fonts, which can be added by downloading font files and updating the `pubspec.yaml` file. Once added, the custom font can be applied across the app or to specific widgets.

### Steps to Add a Custom Font

1. **Download the Font Files**:

   - Download your desired font files (e.g., `.ttf` or `.otf` format).
   - Common sources for fonts include [Google Fonts](https://fonts.google.com/) and [Font Squirrel](https://www.fontsquirrel.com/).

2. **Add Font Files to Your Project**:

   - Create a `fonts` folder in the root directory of your Flutter project (or any directory you prefer).
   - Place the font files inside this `fonts` folder.

3. **Update `pubspec.yaml`**:

   - Open the `pubspec.yaml` file.
   - Add the custom font under the `fonts` section. Specify the family name and path to each font file.
   - Make sure to follow indentation exactly, as incorrect indentation can cause errors.

   ```yaml
   flutter:
     fonts:
       - family: CustomFont # Name of the font family
         fonts:
           - asset: fonts/CustomFont-Regular.ttf # Path to the font file
           - asset: fonts/CustomFont-Bold.ttf
             weight: 700 # Optional weight for the bold variant
           - asset: fonts/CustomFont-Italic.ttf
             style: italic # Optional style for the italic variant
   ```

4. **Use the Custom Font in Text Widgets**:

   - Once you’ve added the font to `pubspec.yaml`, you can use it in your app by setting `fontFamily` in `TextStyle`.

   ```dart
   Text(
     "Hello, Custom Font!",
     style: TextStyle(
       fontFamily: 'CustomFont', // Name of the font family from pubspec.yaml
       fontSize: 24,
     ),
   )
   ```

5. **Apply the Custom Font Globally (Optional)**:

   - To use the custom font throughout your app, set it in `ThemeData` in `MaterialApp`.

   ```dart
   MaterialApp(
     theme: ThemeData(
       fontFamily: 'CustomFont', // Sets the font family globally
     ),
     home: Scaffold(
       appBar: AppBar(title: const Text("Custom Font Example")),
       body: const Center(
         child: Text("Hello, Custom Font!"),
       ),
     ),
   );
   ```

### Benefits of Using Custom Fonts

- **Branding**: A unique font can reinforce your brand’s identity.
- **Readability**: Custom fonts can improve readability and user experience.
- **Design Consistency**: Custom fonts create a consistent look and feel across your app.

### Support

For more information on adding custom fonts in Flutter:

- [Flutter Documentation on Fonts](https://flutter.dev/docs/cookbook/design/fonts)

### Related Code Files

- [pubspec.yaml](pubspec.yaml): File where the custom font is added.
- [main.dart](main.dart): Main file demonstrating the usage of the custom font.
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/44585179#overview)

---

This guide provides beginners with the steps to add and use a custom font in Flutter, enhancing the app’s typography and design consistency.
