# Flutter Portfolio

Flutter Portfolio is a personal portfolio website/application built with Flutter.  
It presents personal information, education, skills, services, and project work in a clean and interactive UI.

This project is mainly created to practice Flutter UI design, animations, state management, and portfolio presentation.

## Features

- Modern personal portfolio design
- Animated custom cursor effect
- Clean landing/hero section
- Social media icons
- Download CV button
- Interactive horizontal menu
- Tab-based section switching using Provider
- About Me section
- Resume section with:
  - Education details
  - Experience details
  - Personal skills
  - Software skills
- Portfolio section with project cards
- Project category filtering:
  - All
  - Flutter
  - C++
- GitHub project links using `url_launcher`
- Services section with hover cards
- Custom reusable widgets
- Responsive-style layout for larger screens

## Tech Stack

- Flutter
- Dart
- Provider
- Google Fonts
- Font Awesome Flutter
- URL Launcher
- Dotted Line
- Sleek Circular Slider

## Dependencies

The main packages used in this project are:

```yaml
google_fonts: ^6.3.0
font_awesome_flutter: ^10.6.0
provider: ^6.1.5+1
dotted_line: ^3.2.3
sleek_circular_slider: ^2.1.0
url_launcher: ^6.3.0
```

## Project Structure

```bash
Flutter-Portfolio/
│
├── lib/
│   ├── main.dart
│   │
│   ├── Components/
│   │   ├── About_component.dart
│   │   ├── Portfolio_component.dart
│   │   ├── Service_component.dart
│   │   └── resume_component.dart
│   │
│   ├── Provider/
│   │   └── tab_dataprovider.dart
│   │
│   ├── views/
│   │   └── homepage.dart
│   │
│   └── widgets/
│       ├── AnimatedWidgets/
│       ├── Buttons/
│       ├── Cursor/
│       ├── Icons/
│       ├── Misc/
│       └── Text/
│
├── assets/
│   └── images/
│       ├── human.png
│       ├── Me.jpeg
│       └── me2.jpeg
│
├── android/
├── ios/
├── web/
├── windows/
├── linux/
├── macos/
│
├── pubspec.yaml
└── README.md
```

## Getting Started

Follow the steps below to run this project on your local machine.

### Prerequisites

Make sure Flutter is installed on your system.

Check Flutter installation:

```bash
flutter doctor
```

## Installation

Clone the repository:

```bash
git clone https://github.com/ibrahim-codes1/Ibrahim-Flutter-Portfolio.git
```

Go to the project folder:

```bash
cd Flutter-Portfolio
```

Install dependencies:

```bash
flutter pub get
```

Run the project:

```bash
flutter run
```

## Run on Web

To run the portfolio in a web browser:

```bash
flutter run -d chrome
```

## Build Web Version

To create a web build:

```bash
flutter build web
```

## Build APK

To build an Android APK:

```bash
flutter build apk
```

## Main Files

### `main.dart`

This is the main entry point of the application.  
It sets up the Flutter app, Provider, theme, and loads the home page with the animated cursor.

### `homepage.dart`

This file contains the main portfolio layout, including:

- Header
- Hero section
- Social icons
- Navigation menu
- Section switching logic
- About, Resume, Portfolio, and Service components

### `tab_dataprovider.dart`

This file manages the selected tab data using Provider and `ChangeNotifier`.

### `Portfolio_component.dart`

This file contains the portfolio project cards, project data model, category filters, and GitHub links.

## Portfolio Projects Included

The portfolio section includes projects such as:

- TyamoApp
- WhatsApp UI Clone
- Calculator App
- Lottery App
- MBox UI
- SuperMarket Billing System
- Coffee Shop System
- ATM System

## Assets

The project uses local images stored inside:

```bash
assets/images/
```

These assets are registered in `pubspec.yaml`.

## Future Improvements

- Make the layout fully responsive for mobile screens
- Add real links to social media icons
- Add working CV download functionality
- Improve the Services section with real service details
- Add Contact section
- Add Blog section
- Add Testimonials section
- Add dark mode
- Add more animations
- Improve accessibility
- Update the default widget test

## Important Note

Before uploading this project to GitHub, avoid pushing generated folders such as:

```bash
.dart_tool/
build/
```

These folders are created automatically by Flutter and should usually be ignored using `.gitignore`.

## Author

Muhammad Ibrahim

## License

This project is for learning and portfolio practice purposes.
