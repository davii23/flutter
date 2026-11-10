# Exercise 7 - Application State Management and Serialization

This project follows Alien7 and uses two Dart files:

- `lib/main.dart` - `StatefulWidget`, `setState()`, Add Student button, and student list.
- `lib/student.dart` - `Student` model with `toJson()` and `Student.fromJson()`.

The UI displays the map generated from the student object and adds the deserialized student's name to the list.

## Run in Chrome

```powershell
flutter pub get
flutter run -d chrome
```
