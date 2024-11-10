# Flutter

## 102. Image.network

In Flutter, `Image.network` is used to load and display images directly from a URL. This is ideal for displaying images from online sources, such as profile pictures, product images, or any external content hosted on a server. `Image.network` handles image caching and provides a range of customization options to ensure smooth integration into your app.

### Basic Usage of Image.network

The `Image.network` widget requires a URL string and offers several optional properties for configuring image size, fit, alignment, and error handling.

#### Code Example

In this example, `Image.network` is used to display an image from a URL:

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
        appBar: AppBar(title: const Text('Image.network Example')),
        body: Center(
          child: Image.network(
            'https://example.com/sample-image.jpg', // URL of the image
            width: 300, // Set image width
            height: 200, // Set image height
            fit: BoxFit.cover, // Controls how the image fits within its container
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              );
            },
            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              return const Text('Failed to load image');
            },
          ),
        ),
      ),
    );
  }
}
```

### Explanation of Image.network Properties

- **`url`**: The URL of the image to be displayed.
- **`width`** and **`height`**: Specify the image’s width and height in logical pixels. If not set, the image uses its original size.
- **`fit`**: Controls how the image should fit within the given width and height.
  - `BoxFit.cover`: Scales the image to fill the container while preserving aspect ratio.
  - `BoxFit.contain`: Fits the image within the container, maintaining aspect ratio.
  - `BoxFit.fill`: Stretches the image to fill the container, ignoring aspect ratio.
  - Other options: `BoxFit.fitWidth`, `BoxFit.fitHeight`, `BoxFit.none`.
- **`alignment`**: Aligns the image within its container, with options like `Alignment.center`, `Alignment.topLeft`, etc.
- **`loadingBuilder`**: Displays a widget while the image is loading. Often used to show a progress indicator.
- **`errorBuilder`**: Displays a widget if the image fails to load. This can be useful for showing an error message or fallback image.

### Handling Loading and Errors with Image.network

- **Loading Indicator**: Use `loadingBuilder` to display a `CircularProgressIndicator` or similar widget while the image loads.
- **Error Handling**: Use `errorBuilder` to display a fallback widget if the image fails to load (e.g., due to a network issue or an invalid URL).

#### Example with Loading and Error Handlers

```dart
Image.network(
  'https://example.com/sample-image.jpg',
  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
            : null,
      ),
    );
  },
  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
    return const Text('Failed to load image');
  },
)
```

### Common Use Cases for Image.network

- **Profile Pictures**: Display user profile pictures hosted on a server.
- **Product Images**: Load images for products from an online store or e-commerce platform.
- **Background Images**: Use network images as dynamic backgrounds in app screens or widgets.

### Benefits of Using Image.network

- **Dynamic Content**: Allows images to be updated on the server without requiring an app update.
- **Caching**: Caches images locally to improve performance and load times for repeated views.
- **Customizable Loading and Error States**: Provides built-in options for handling loading progress and error states, ensuring a smooth user experience.

### Support

For more information on using `Image.network`:

- [Flutter Documentation on Image.network](https://api.flutter.dev/flutter/widgets/Image/Image.network.html)
- [Udemy](https://www.udemy.com/course/flutter-dart-creez-des-applications-pour-ios-et-android/learn/lecture/26975682#overview)

### Related Code Files

- [main.dart](main.dart): Main file demonstrating the usage of `Image.network` for displaying online images with loading and error handling.

---

This overview helps beginners understand `Image.network`, how to use it for displaying images from a URL, and handle loading and error states in a Flutter app.
