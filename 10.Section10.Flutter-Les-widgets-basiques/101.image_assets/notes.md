# Flutter

## 101. Image.asset

In Flutter, `Image.asset` is used to load and display images from the local project directory. This is useful for assets like logos, icons, and backgrounds that are part of your app's resources. Adding assets like images to a Flutter project requires defining them in the `pubspec.yaml` file and using the `Image.asset` widget.

### Steps to Use Image.asset

1. **Add Image Files to Your Project**:

   - Create an `assets` folder in the root directory of your Flutter project (or any directory you prefer).
   - Place your images in this folder (e.g., `assets/logo.png`).

2. **Update `pubspec.yaml`**:

   - Open the `pubspec.yaml` file.
   - Locate the `flutter` section, and add an `assets` entry to define the path of the images.
   - Ensure correct indentation (YAML files are sensitive to indentation).

   ```yaml
   flutter:
     assets:
       - assets/logo.png
       - assets/images/banner.jpg # Add multiple assets as needed
   ```

3. **Use Image.asset in Your Code**:

   - After defining the assets, you can use `Image.asset` to display them in your widgets.

   ```dart
   import 'package:flutter/material.dart';

   void main() {
     runApp(const MyApp());
   }

   class MyApp extends StatelessWidget {
     const MyApp({super.key});

     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         home: Scaffold(
           appBar: AppBar(title: const Text('Image.asset Example')),
           body: Center(
             child: Image.asset(
               'assets/logo.png', // Path to the image
               width: 200, // Set width
               height: 200, // Set height
               fit: BoxFit.cover, // Controls how the image is fit within its container
             ),
           ),
         ),
       );
     }
   }
   ```

### Explanation of Image.asset Properties

- **`Image.asset(String path)`**: Path to the image asset within your project, as defined in `pubspec.yaml`.
- **`width`** and **`height`**: Set the image's width and height. If not specified, the image will take its original size.
- **`fit`**: Defines how the image should fit within the given width and height:
  - `BoxFit.cover`: Scales the image to fill the space while preserving aspect ratio; may crop.
  - `BoxFit.contain`: Scales the image to fit within the space, preserving aspect ratio; no cropping.
  - `BoxFit.fill`: Stretches the image to fill the space, ignoring aspect ratio.
  - `BoxFit.fitWidth`: Scales the image to fit the width, maintaining aspect ratio.
  - `BoxFit.fitHeight`: Scales the image to fit the height, maintaining aspect ratio.
- **`alignment`**: Controls the alignment of the image within its container, such as `Alignment.center`, `Alignment.topLeft`, etc.

### Common Use Cases for Image.asset

- **App Logos**: Displaying a company or app logo in the app’s home screen or splash screen.
- **Icons and Graphics**: Loading custom icons and graphic elements.
- **Background Images**: Setting background images for widgets or screens.

### Benefits of Using Image.asset

- **Offline Availability**: Local images are stored within the app, ensuring they are always available without network requirements.
- **Consistent Quality**: Images retain their quality across devices as they are stored at a specific resolution.
- **Improved Load Time**: Local assets load faster than network images, providing a better user experience.

### Support

For more information on using `Image.asset`:

- [Flutter Documentation on Image.asset](https://api.flutter.dev/flutter/widgets/Image/Image.asset.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975684#overview)

### Related Code Files

- [pubspec.yaml](pubspec.yaml): File where image assets are defined for the Flutter project.
- [main.dart](main.dart): Main file demonstrating the usage of `Image.asset` to display local images.

---

This guide helps beginners understand how to use `Image.asset` to display local images, covering setup, properties, and common use cases.
