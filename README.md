# 📝 Notes App

## Purpose and Scope

This document provides a high-level overview of the **Notes Application** repository — a Flutter-based mobile application that enables users to create, manage, and organize personal notes with **local storage capabilities**. The application implements **Clean Architecture** using the **BLoC pattern** for state management and **Hive** database for persistent local storage.

---

## 🧠 Application Architecture

The application follows a **layered architecture** with clear separation of concerns between:

- Presentation
- Business Logic
- Data Layers

<p align="center">
  <img src="https://github.com/user-attachments/assets/e3b45872-8f56-47e6-ad0c-be5100336ddb" alt="Application Architecture" width="500"/>
</p>

---

## 🔄 Data Flow Overview

The application implements a **unidirectional data flow pattern** using the BLoC architecture:

<p align="center">
  <img src="https://github.com/user-attachments/assets/c7699786-4b4d-4fc4-9877-e295da2b6682" alt="Data Flow" width="500"/>
</p>

---

## 🛠 Initialization Sequence

The application follows a specific startup sequence to ensure proper setup of dependencies:

1. **BLoC Observer Setup**: `Bloc.observer = SimpleBlocObserver()` for development debugging  
2. **Hive Initialization**: `Hive.initFlutter()` to initialize the Hive database  
3. **Adapter Registration**: `Hive.registerAdapter(NoteModelAdapter())` for note serialization  
4. **Database Opening**: `Hive.openBox<NoteModel>(kNoteBox)` to open the notes storage  
5. **App Launch**: `runApp(const NotesApp())` to start the Flutter application  
6. **State Management**: `NotesCubit()..fetchAllNotes()` to load existing notes

The app uses a **dark theme**, **Poppins** font family, and disables the debug banner for a clean user experience.

---

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/c0c1a1be-1b41-4d11-9667-8270f1e47107" alt="add note" width="220"/>
  <img src="https://github.com/user-attachments/assets/36c75121-ca7a-4d59-9fc1-d93c7a2af4de" alt="validation" width="220"/>
  <img src="https://github.com/user-attachments/assets/6ec214c9-f30d-46ed-ad7f-60cf6a7412f9" alt="home" width="220"/>
  <img src="https://github.com/user-attachments/assets/6d7a5caf-7fba-4113-8649-7950a0ffce9b" alt="home 2" width="220"/>
  <img src="https://github.com/user-attachments/assets/3c180e17-0b4e-4912-b906-cb7fa25e2235" alt="delete note" width="220"/>
</p>


---
