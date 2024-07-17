
[![Pub Version](https://img.shields.io/badge/pub-v1.0.0+3-blue?style=flat-square&logo=dart&logoColor=white)](https://pub.dev/packages/example_package)

## month_year_dropdown

A Flutter package for creating dropdown menus to select months and years. This package provides a customizable dropdown widget that allows users to choose from a list of months or years, enhancing the user experience in date-related inputs.


---

Created By Krishn Kumar [Krish0034](`https://github.com/Krish0034`)

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-F7BA2A?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/krish0034)


---

## Features

- Dropdown menus for selecting months and/or years.
- Customizable dropdown field widget.
- Configurable styles, error messages, and hints.
- Compatible with iOS, Android, and web platforms.

## Installation 📦

1 To use this package, add `month_year_dropdown` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  month_year_dropdown: ^1.0.0
```
2 Then, import the package into your Dart code:

```dart
import 'package:month_year_dropdown/month_year.dart';
```

## Usage

Here's a simple example that shows how to use the `MonthYearDropdown` widget:

```dart
import 'package:flutter/material.dart';
import 'package:month_year_dropdown/month_year.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController controller1= TextEditingController();
  final TextEditingController controller2= TextEditingController();
  final TextEditingController controller3= TextEditingController();
  final TextEditingController controller4= TextEditingController();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Month Year Dropdown Example'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(

              children: [
                const Text('Month and Year Example'),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MonthYearDropdown(
                        controller: controller1,
                        padding: const EdgeInsets.all(8.0),
                        itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                        monthsEnable: true,
                        textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                        textCapitalization: TextCapitalization.words,
                        readOnly: true,
                        textInputType: TextInputType.text,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        initialText: 'Select Month/Year',
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selection',
                        hintText: 'Tap to select',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Year',
                        innerLabelTextStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: MonthYearDropdown(
                        controller: controller2,
                        padding: const EdgeInsets.all(8.0),
                        itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                        yearsEnable: true,
                        monthsEnable: false,
                        textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                        textCapitalization: TextCapitalization.words,
                        readOnly: true,
                        textInputType: TextInputType.text,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        initialText: 'Select Month/Year',
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selection',
                        hintText: 'Tap to select',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Year',
                        innerLabelTextStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Month Example'),
                const SizedBox(height: 10,),
                MonthYearDropdown(
                  controller: controller3,
                  padding: const EdgeInsets.all(8.0),
                  itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                  monthsEnable: true,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  textInputType: TextInputType.text,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  initialText: 'Select Month/Year',
                  suffixIconColor: Colors.blue,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  errorText: 'Invalid selection',
                  hintText: 'Tap to select',
                  hintTextStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  borderColor: Colors.blue,
                  errorBorderColor: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  innerLabelText: 'Choose Month/Year',
                  innerLabelTextStyle: const TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('Year Example'),
                const SizedBox(height: 10,),
                MonthYearDropdown(
                  controller: controller4,
                  padding: const EdgeInsets.all(8.0),
                  itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                  yearsEnable: true,
                  monthsEnable: false,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  textInputType: TextInputType.text,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  initialText: 'Select Month/Year',
                  suffixIconColor: Colors.blue,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  errorText: 'Invalid selection',
                  hintText: 'Tap to select',
                  hintTextStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  borderColor: Colors.blue,
                  errorBorderColor: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  innerLabelText: 'Choose Month/Year',
                  innerLabelTextStyle: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```


### Properties Usage ⚙️

#### `DbUsernameSuggesterField`

| Property           | Type                    | Description                                                                                  |
|--------------------|-------------------------|----------------------------------------------------------------------------------------------|
| Label              | `label`                 | Specifies the label for the username input field.                                            |
| TextCapitalization | `textCapitalization`    | Defines how the text should be capitalized (e.g., none, words, sentences).                   |
| OnChange           | `onChange`              | Initial or final destination for sliding or fading effects.                                  |
| BorderRadius       | `borderRadius`          | Specifies the border radius of the input field.                                              |
| HintText           | `hintText`              | Hint text displayed inside the input field when it is empty.                                 |
| HintTextStyle      | `hintTextStyle`         | Style applied to the hint text.                                                              |
| BorderColor        | `borderColor`           | Color of the input field border.                                                             |
| ErrorText          | `errorText`             | Error message displayed when the username validation fails.                                  |


## Platform Support 🌐

- **Android:** Supported on SDK 16 and above.
- **iOS:** Supported on iOS 11.0 and above.
- **Web:** Supported on all modern web browsers.
- **Linux:** Supported on any Linux distribution.
- **macOS:** Supported on macOS 10.14 and above.
- **Windows:** Supported on all Windows versions.


## More information

- **Pub Package:** Provides a direct link to the package page on pub.dev where users can find more detailed information, version history, and installation instructions.
- **Flutter Documentation:** Links to the official Flutter documentation, serving as a resource for general information, guides, and best practices related to Flutter development.



