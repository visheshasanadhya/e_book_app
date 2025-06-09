# shrimad_bhagavad_gita
# 📖 श्रीमद् भगवद् गीता - E-Book App

🌼 A beautifully designed and spiritually enriching Flutter web app featuring all 18 chapters of the **Shrimad Bhagavad Gita**. It includes the original Sanskrit shlokas, their meanings, synonyms, and purports. The app is deployed on **GitHub Pages** for anyone to access and explore the divine knowledge of the Gita.

[🌐 Live Deployment Link](https://visheshasanadhya.github.io/e_book_app/)

---

## ✨ Features

- 📜 View all chapters and shlokas from the Shrimad Bhagavad Gita.
- 🌐 Supports Devanagari (Hindi/Sanskrit) script.
- 🧘 Expandable tiles for each shloka with:
  - Full verse
  - Meaning
  - Synonyms
  - Purport
- ⏳ Splash screen with beautiful background and title.
- 🔁 Navigation using `GetX`.
- 📦 Offline support using local JSON.
- 📱 Fully responsive for web and mobile screens.

---

## 🖼️ Screenshots


| Splash Screen | Home Page | Shloka List | Shloka Details |
|---------------|-----------|-------------|----------------|
| ![](assets/screenshots/screenshot1.png) | ![](assets/screenshots/screenshot2.png) | ![](assets/screenshots/screenshot3.png) | ![](assets/screenshots/screenshot4.png) |

| Drawer Screen |
|---------------|
| ![](assets/screenshots/screenshot5.png) |

---

## 🔧 Tech Stack

- 💙 **Flutter** (Web)
- 🔄 **GetX** for routing
- 📄 **Local JSON** for content
- 🎨 Custom Widgets for reusable UI
- 🌍 **GitHub Pages** for deployment

---

## 🗂️ Folder Structure

e_book_app/
│
├── assets/
│ ├── images/
│ │ └── splash.jpg
│ ├── shlokas.json
│
├── lib/
│ ├── Helpers/
│ │ ├── common_widgets.dart
│ │ ├── custom_app_bar.dart
│ │ ├── drawer.dart
│ │ └── utilities.dart
│ ├── Models/
│ │ └── shloka_model.dart
│ ├── Screens/
│ │ ├── home_page.dart
│ │ ├── shlok_list_view.dart
│ │ └── splash_page.dart
│ └── main.dart   

🙏 Credits
💻 Developed by Vishesha Sanadhya

📚 Content sourced from open/public Shrimad Bhagavad Gita JSON repositories

🎨 UI inspired by Indian heritage and scriptures

📌 License
This project is licensed under the MIT License.

