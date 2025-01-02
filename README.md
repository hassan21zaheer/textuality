# Textuality Package

**Textuality** is a powerful Flutter package that enhances the appearance of text widgets with a variety of customizable text effects and styles. With this package, you can easily add gradient text, stroke text, neon effects, shadow effects, interactive text, and more to your Flutter app.

![Textuality](https://github.com/user-attachments/assets/6ab7512e-b78d-40b6-b5bc-bc6b45d97582)

## Features

- **GradientText**: Add gradient colors to your text.
- **StrokeText**: Apply an outline or stroke around your text.
- **NeonText**: Create a glowing neon text effect.
- **ChipText**: Display text inside stylish chip-like containers.
- **ShadowText**: Add customizable shadows to your text.
- **InteractiveText**: Make text interactive for clicks, taps, or custom gestures.
- **MultiColorText**: Display text in multiple colors, even within the same string.
- **RotatedText**: Rotate the text in any direction, including vertical.
- **BlurredText**: Add a blurred effect to your text.
- **BorderedBackgroundText**: Add a border around the background of your text.

Each widget accepts various optional parameters for customization, such as style, text alignment, maxLines, overflow, and more.

## Installation

To use the `textuality` package in your Flutter project, follow these steps:

1. Add the package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     textuality: ^0.1.0
   
Run the following command to install the package:

flutter pub get

💻Example 

Below is an example of how to use the Textuality package in your Flutter app:
```dart
import 'package:flutter/material.dart';
import 'package:textuality/textuality.dart';

class TextualityExample extends StatefulWidget {
  const TextualityExample({super.key});

  @override
  State<TextualityExample> createState() => _TextualityExampleState();
}

class _TextualityExampleState extends State<TextualityExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Textuality Package Preview',
            style: TextStyle(color: Colors.black),
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              // Gradient Text
              GradientText(
                text: 'Gradient Text',
                giveGradient: [Colors.blue, Colors.green],
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Stroke Text
              StrokeText(
                text: 'Stroke Text',
                strokeColor: Colors.red,
                strokeWidth: 8.0,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent),
              ),
              SizedBox(height: 20),
              // Neon Text
              NeonText(
                text: 'Neon Effect Text',
                glowColor: Colors.cyan,
                blurRadius: 20.0,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              // Text Chips
              ChipText(
                text: 'Text Chip',
                chipColor: Colors.blueAccent,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),

              // Shadow Text
              ShadowText(
                  text: 'Shadow Effect Text',
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.amber,
                      offset: Offset(5, 5),
                    ),
                  ],
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 20),

              // Multi-Color Text
              MultiColorText(
                spans: [
                  TextSpan(
                    text: 'Multi',
                    style: TextStyle(color: Colors.blue, fontSize: 40),
                  ),
                  TextSpan(
                    text: 'Color ',
                    style: TextStyle(color: Colors.green, fontSize: 40),
                  ),
                  TextSpan(
                    text: 'Text',
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // InteractiveTextuality
              InteractiveText(
                text: 'on Tap',
                onTap: () {},
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              // Rotated Text
              RotatedText(
                text: 'Rotated Text',
                rotationAngle: 0.5, // Rotate 90 degrees
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Blurred Text
              BlurredText(
                text: 'Blurred Text',
                blurStrength: 5.0,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Bordered Background Text
              BorderedBackgroundText(
                text: 'Bordered Background Text',
                borderColor: Colors.black,
                borderWidth: 3.0,
                backgroundColor: Colors.yellow,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

    
 ```
![GradientTextuality](https://github.com/user-attachments/assets/7bb68d2a-80e4-4c2d-bc82-a441fdd93086)
GradientText

![ChipTextuality](https://github.com/user-attachments/assets/76f6aee5-2a15-4a64-8719-7a6eabb00939)
ChipText

![StrokeTextuality](https://github.com/user-attachments/assets/dae8275b-c36e-41a5-aa19-630a85f9818f)
StrokeText

![InteractiveTextuality](https://github.com/user-attachments/assets/4038d91b-bc26-4675-bc2a-4b104bf1abc5)
InteractiveText

![NeonTextuality](https://github.com/user-attachments/assets/9d7f02b6-20fa-4cf1-99a7-cae69e94a3f4)
NeonText

![ShadowTextuality](https://github.com/user-attachments/assets/65ffc000-8830-49fb-a203-16cf08d234f4)
ShadowText

![MultiColorTextuality](https://github.com/user-attachments/assets/6b07c1f7-b7eb-416c-b478-b89624d01354)
MultiColorText

![RotatedTextuality](https://github.com/user-attachments/assets/bac0abb1-feff-45e0-83a0-9ba021339c2f)
RotatedText

![BlurredTextuality](https://github.com/user-attachments/assets/b2a87199-ca98-446a-9330-d02213618ae6)
BlurredText

![BorderedBackgroundTextuality](https://github.com/user-attachments/assets/0837887d-4533-4f01-8f7a-6f7ac85ac403)
BorderedText

## Changelog

See the CHANGELOG.md file for updates.

## License

This package is licensed under the MIT License.

Author

## Author

[Hassan Zaheer](https://www.linkedin.com/in/hassanzaheer21/)

