# Task App

A simple Flutter task management application focused on a clean UI and a straightforward user experience for adding, tracking, and removing daily tasks.

## Overview

This project is a lightweight to-do app built with Flutter. It demonstrates state management using `StatefulWidget`, component-based UI organization, and task rendering with a dynamic list.

The current version allows the user to:

- Add a new task from the input field at the bottom of the screen
- View tasks in a styled list
- Mark tasks as completed or incomplete
- Delete tasks from the list
- See an empty-state message when no tasks are available
- Display each task creation date

## Features Implemented

- Clean home screen with a simple app bar
- Dedicated section for adding tasks
- Validation to prevent adding empty tasks
- Task cards with completion and delete actions
- Visual indication for completed tasks using strikethrough text
- Empty state UI for better user feedback
- Modular project structure using separate files for views, widgets, and models

## Tech Stack

- Flutter
- Dart
- Material Design widgets
- `intl` package for date formatting

## Project Structure

```text
lib/
|-- main.dart
|-- models/
|   `-- task_model.dart
|-- views/
|   `-- home_view.dart
`-- widgets/
    |-- add_task_section.dart
    |-- empty_tasks_section.dart
    `-- tasks_section.dart
```

## Getting Started

1. Make sure Flutter is installed and configured correctly.
2. Clone the repository:

```bash
git clone https://github.com/your-username/task_app.git
cd task_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## Current Notes

- Tasks are currently stored in memory only during runtime.
- Closing the app clears the task list because local persistence has not been added yet.

## Future Improvements

- Save tasks locally using `shared_preferences` or a local database
- Add task editing support
- Add task priorities and categories
- Improve UI responsiveness and animations
- Add unit and widget tests

## Author

Developed as a Flutter practice project for building a simple and organized task management application.
