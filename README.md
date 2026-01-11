# Shop App Flutter

A simple e-commerce application built with Flutter.

## Features

*   Browse a list of products.
*   View product details.
*   Add and remove items from the shopping cart.
*   A dedicated cart page to view all selected items.

## Getting Started

### Prerequisites

Make sure you have Flutter installed. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  Clone the repository:
    ```bash
    git clone <repository-url>
    ```
2.  Install dependencies:
    ```bash
    flutter pub get
    ```

## Usage

Run the app:
```bash
flutter run
```

## Dependencies

*   [flutter](https://flutter.dev/)
*   [provider](https://pub.dev/packages/provider)
*   [cupertino_icons](https://pub.dev/packages/cupertino_icons)

## Folder Structure

*   `lib/`: Main application code.
    *   `pages/`: UI for different pages of the app (home, product details, cart).
    *   `widgets/`: Reusable UI components.
    *   `providers/`: State management using Provider.
    *   `global_variables.dart`: Global variables used throughout the app.
*   `assets/`: Images and fonts used in the application.
*   `test/`: Tests for the application.
