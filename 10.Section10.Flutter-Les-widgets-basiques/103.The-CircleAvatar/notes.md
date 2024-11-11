# Flutter

## 103. CircleAvatar

The `CircleAvatar` widget in Flutter is used to display circular images or icons, often representing a profile picture or a user icon. It’s especially useful for building UI elements in social, messaging, and profile-related apps where circular avatars are common. `CircleAvatar` allows you to customize its background color, image, radius, and more.

### Basic Usage of CircleAvatar

The `CircleAvatar` widget can display an image from an `ImageProvider` (e.g., `NetworkImage` or `AssetImage`) or a custom background color.

#### Code Example

In this example, `CircleAvatar` is used to display a profile picture from a network image:

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
        appBar: AppBar(title: const Text('CircleAvatar Example')),
        body: Center(
          child: CircleAvatar(
            radius: 50, // Sets the radius of the circle
            backgroundImage: NetworkImage(
              'https://example.com/profile-pic.jpg', // URL for the profile image
            ),
            backgroundColor: Colors.blueGrey, // Background color if no image is available
          ),
        ),
      ),
    );
  }
}
```

### Explanation of CircleAvatar Properties

- **`radius`**: Controls the size of the circle by setting its radius in logical pixels. The default radius is 20.
- **`backgroundImage`**: An `ImageProvider` that specifies the image to display, such as `NetworkImage` or `AssetImage`.
- **`backgroundColor`**: Sets a background color for the avatar when there’s no image or as a fallback.
- **`child`**: A widget (typically an `Icon` or `Text`) displayed in the center of the avatar if no `backgroundImage` is provided.

#### Example Using CircleAvatar with Icon and Background Color

```dart
CircleAvatar(
  radius: 40,
  backgroundColor: Colors.green, // Sets background color
  child: Icon(
    Icons.person,
    size: 40, // Size of the icon
    color: Colors.white, // Icon color
  ),
),
```

### Common Use Cases for CircleAvatar

- **Profile Pictures**: Display user profile images in a rounded, circular frame.
- **User Initials**: Show user initials in the center as a placeholder if no profile image is available.
- **Icons and Symbols**: Display circular icons for various app functionalities, such as contact or social media links.

### Benefits of Using CircleAvatar

- **Visual Appeal**: Adds a modern, circular aesthetic commonly used in UI/UX design.
- **Customization**: Offers flexibility with background colors, images, icons, and text.
- **Efficient for Profile UIs**: A simple solution for displaying circular profile images with a fallback when images are missing.

### Support

For more information on using `CircleAvatar`:

- [Flutter Documentation on CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975710#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `CircleAvatar` with images, colors, and icons.

---

This overview provides a comprehensive look at `CircleAvatar`, helping you understand how to use it for circular images and icons in Flutter applications.
