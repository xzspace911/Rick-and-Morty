# Rick and Morty Characters App

## 📱 Overview

Rick and Morty Characters App is a mobile application that displays characters from the famous animated series Rick and Morty. Users can explore character details, including their status, species, and origin, using an interactive UI with smooth animations.

## 🚀 Features

- Fetches and displays characters from the Rick and Morty API
- Detailed character information with images
- Smooth Hero animations for navigation between character list and details
- Uses Cubit and Bloc for state management
- Efficient API calling and data handling

## 🛠️ Technologies Used

- Flutter for cross-platform development
- Dart as the programming language
- Bloc & Cubit for state management
- Dio package for API requests
- Animations (Hero, Fade, etc.) for smooth UI interactions

## 📂 Project Structure
```
lib/
├── main.dart          # Entry point of the app
├── data
│   ├── web_services      # API handling and services
│   ├── models/       # Data models for characters
│   ├── repository/
│   ├── bloc/         # Cubit and Bloc state management
├── presentation/
│   ├── screens/      # UI screens
│   ├── widgets/      # Reusable components
├── assets/           # Images and assets
```
## 📡 API Integration

- Uses https://rickandmortyapi.com/api/character to fetch character data
- Handles network requests efficiently with error handling
- Uses pagination for better performance

## 🎬 Animations Used

- Hero animation for smooth transition between character list and details
- Fade & Scale animations for UI elements

## 📥 Installation & Setup

Clone the repository:
```
git clone https://github.com/xzspace911/rick_and_morty.git
```

Navigate to the project directory:
```
cd rick_morty_app
```
Install dependencies:
```
flutter pub get
```
Run the application:
```
flutter run
```

## 📌 Future Improvements

- Add search functionality
- Implement favorite characters feature
- Enhance UI with more animations

## 📜 License

This project is licensed under the MIT License.

---
Enjoy exploring the multiverse with Rick and Morty! 🛸


