# Exam App 🧠

A dynamic and interactive Quiz Application built with **Flutter**, focusing on clean code architecture and Object-Oriented Programming (OOP) principles.

## 🚀 Features
* **Interactive UI:** Green "Like" for correct answers and Red "Dislike" for wrong ones.
* **Smart Scoring:** Tracks your performance throughout the 7 questions.
* **Custom Alerts:** Uses `rflutter_alert` for a beautiful final results summary.
* **Restart Functionality:** Easily reset the quiz and try again.

## 🛠️ Concepts Applied
This project was a deep dive into writing scalable code using:
* **Abstraction & Encapsulation:** Hiding logic within classes to keep the UI clean.
* **Inheritance & Polymorphism:** Managing different data structures efficiently.
* **Lists & Models:** Using Dart Lists to manage a collection of Question objects.
* **Modularization:** Separating the Brain (Logic) from the UI.

## 📦 Packages Used
* `rflutter_alert`: For the stylish end-of-game popup.

## 🧠 Technical Implementation

I focused on applying software engineering best practices rather than just building a functional UI:

* **Encapsulation:** All quiz data and logic are encapsulated within a `QuizBrain` class. The UI doesn't have direct access to the question list, preventing accidental data corruption.
* **Abstraction:** Created a clear boundary between the Data Layer (Questions) and the Presentation Layer (UI).
* **Modularity:** Using a dedicated class to manage the quiz flow (next question, checking answers, resetting) makes the code reusable and easy to test.
* **State Management:** Managed simple app state to update icons (Check/Close) based on user performance in real-time.
* 
## 📸 Screenshot 
<img width="397" height="864" alt="Screenshot 2026-02-04 131250" src="https://github.com/user-attachments/assets/b2a95dbf-4638-4938-a0d2-cbfceb5df35a" />
<img width="399" height="830" alt="Screenshot 2026-02-04 131300" src="https://github.com/user-attachments/assets/2b8c060c-11eb-448a-8243-d26a6420345f" />
<img width="410" height="441" alt="Screenshot 2026-02-03 172839" src="https://github.com/user-attachments/assets/c0061c00-06e2-4ed0-b886-76553ce4b3c8" />
<img width="407" height="857" alt="Screenshot 2026-02-04 131243" src="https://github.com/user-attachments/assets/660feab9-8a1e-4844-8358-4d4ed8e2e3a0" />

