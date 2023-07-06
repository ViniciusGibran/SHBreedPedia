# BreedPedia

## Introduction

BreedPedia is an iOS app that fetches information about various dog breeds from a public API and presents it in a clean, user-friendly interface. The app demonstrates the use of modern iOS technologies like Swift, Combine, UIKit, SwiftUI, and third-party libraries such as Kingfisher for image loading and caching.

## Project Architecture and Conventions

This project uses the **Model-View-ViewModel (MVVM)** design pattern for organizing code. This pattern supports separation of concerns, making the code more modular and easier to maintain and test. It includes:

- **Models**: Hold application data. They’re usually structs or simple classes.
- **Views**: Display visual elements and controls on the screen. They’re typically subclasses of `UIView`.
- **View Models**: Transform model information into values that can be displayed on a view. They’re usually classes, so they can be passed around as references.

This project also adheres to the **SOLID principles** which are a set of software design principles that promote code that is easy to maintain, understand, and extend:

- **Single Responsibility Principle**: A class should have one, and only one, reason to change.
- **Open-Closed Principle**: Software entities should be open for extension, but closed for modification.
- **Liskov Substitution Principle**: Subtypes must be substitutable for their base types.
- **Interface Segregation Principle**: Clients should not be forced to depend on interfaces they do not use.
- **Dependency Inversion Principle**: High-level modules should not depend on low-level modules. Both should depend on abstractions.

The project is organized into multiple directories for clarity and ease of navigation:

- **/Base**: Contains base files for the application such as `AppDelegate.swift` and `SceneDelegate.swift`. Also contains the main `Coordinator`.
- **/Views**: Contains all view-related classes, grouped by each view. Each view has its corresponding `ViewModel` and `Coordinator` inside its group for ease of navigation.
- **/Models**: Contains all the model classes for the application.
- **/Services**: Contains the service classes such as the API client.
- **/Utils**: Contains utilities and extensions used throughout the application. Extensions are grouped under the `/Extensions` subdirectory.
- **/Resources**: Contains resources such as images, data models, and the app's Info.plist.
- **/Constants**: Contains application-wide constants. Each view that has its own constants will have a corresponding `ViewNameConstants.swift` file inside its group in the `/Views` directory.

## Setup

To run the app, follow these steps:

1. Clone the repository.
2. Open `BreedPedia.xcodeproj` in Xcode.
3. Run the app using the `Cmd+R` shortcut, or by clicking the `Run` button in Xcode.

## Features

- List of all dog breeds fetched from the public API.
- Search functionality to find specific breeds.
- Detail view for each breed, presenting more information and images.

## License

[MIT](LICENSE)

