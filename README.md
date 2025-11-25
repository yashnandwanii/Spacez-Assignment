# Spacez Assignment - Coupons Page

A Flutter mobile application showcasing a beautifully designed coupons page with interactive UI elements and pixel-perfect styling.

## 📱 Features

- **Custom Coupons Page**: Displays available booking coupons with elegant ticket-style design
- **Interactive UI Elements**: All buttons and clickable elements show success messages
- **Responsive Design**: Uses `flutter_screenutil` for consistent sizing across devices
- **Custom Fonts**: Integrates Google Fonts (Kalnia, Lexend Deca, Libre Caslon Text, Figtree)
- **Dotted Separators**: Custom dashed line separators in coupon cards
- **Bottom Booking Bar**: Fixed bottom container with pricing and reservation button

## 🎨 Design Highlights

- Warm cream background with white card overlays
- Rust-colored accent elements
- Custom ticket-style coupon cards with perforated edges
- Precise color matching and typography
- Green success banner with rewards notification

## 🛠️ Technologies Used

- **Flutter SDK**: ^3.9.2
- **flutter_screenutil**: ^5.9.0 - Responsive UI sizing
- **google_fonts**: ^6.1.0 - Custom font integration
- **dotted_line**: ^3.0.0 - Dashed line separators

## 📂 Project Structure

```
lib/
├── main.dart                    # App entry point
├── coupons_page.dart           # Main coupons screen
├── coupon_card.dart            # Reusable coupon card widget
├── bottom_fixed_container.dart # Bottom booking bar
└── app_theme.dart              # Theme and color definitions

assets/
├── logo.png                    # App logo
└── icons/
    ├── offer_filled.png        # Offer icon
    └── edit.png                # Edit icon
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.9.2)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yashnandwanii/Spacez-Assignment.git
cd spacez_assignment
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 🎯 Interactive Elements

All buttons in the application are fully interactive and display success messages:

- **Menu Button**: Opens menu (shows confirmation)
- **Back Button**: Navigation back (shows confirmation)
- **Apply Button**: Applies coupon to booking
- **Read More**: Expands coupon details
- **Edit Icon**: Modifies date/guest selection
- **Reserve Button**: Confirms reservation

## 🎨 Color Palette

- **Primary Rust**: #C16B3E (193, 107, 62)
- **Success Green**: #316836 (49, 104, 54)
- **Background Cream**: #FDF9F7 (253, 249, 247)
- **Text Dark**: #2D2D2D
- **Text Grey**: #8A8A8A

## 📸 Screenshots

The app implements a pixel-perfect design matching the provided mockups with attention to detail in:
- Typography and font weights
- Spacing and padding
- Color accuracy
- Icon placement and sizing

## 👨‍💻 Author

**Yash Nandwani**
- GitHub: [@yashnandwanii](https://github.com/yashnandwanii)

## 📄 License

This project is created as an assignment for Spacez.

---

Made with ❤️ using Flutter
