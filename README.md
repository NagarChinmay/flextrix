Here's the **final enhanced** `README.md` file with the **author name** and **portfolio link** added. 🚀

---

# **Flextrix Example App** 🚀

[![Pub Version](https://img.shields.io/pub/v/flextrix?style=flat-square)](https://pub.dev/packages/flextrix)  
[![License](https://img.shields.io/github/license/chinamy-nagar/flextrix-example?style=flat-square)](LICENSE)  
[![Platform](https://img.shields.io/badge/platform-Flutter-blue?style=flat-square)](https://flutter.dev)

**Flextrix Example App** demonstrates how to **create adaptive and responsive UIs effortlessly** using the **Flextrix** package. It automatically adjusts UI elements based on **screen size**, making your app look great on **mobile, tablet, and desktop** 📱💻.

---

## ✨ **Features**

✅ **Automatic Layout Adaptation** – No need for manual screen size checks.  
✅ **Adaptive Widgets & Styling** – Adjusts padding, font sizes, and container sizes dynamically.  
✅ **Easy Integration** – Just **wrap your app** and start using `context.adaptive()`.  
✅ **Works on Any Screen Size** – Mobile, Tablet, and Desktop support.  
✅ **Lightweight & Efficient** – No extra dependencies, just pure **Flutter goodness**!

---

## 📦 **Installation**

### **Step 1: Add Dependency**
Add **Flextrix** to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flextrix: latest_version  # Replace with the latest version
```

Run the following command:

```sh
flutter pub get
```

---

## 🚀 **Getting Started**

### **Step 2: Import Flextrix**

```dart
import 'package:flextrix/flextrix.dart';
```

### **Step 3: Wrap Your App with Flextrix**

Modify your `main.dart` to **wrap the app** for automatic responsiveness:

```dart
void main() {
  runApp(FlextrixExampleApp().addFlextrix()); // Wraps app with responsive layout
}
```

---

## 🎨 **Creating a Responsive UI**

### **Example: Adaptive Padding, Container & Text**

```dart
class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flextrix Example")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(
            context.adaptive(8.0, 32.0, sm: 16.0, md: 24.0), // Adaptive padding
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displays Current Screen Type
              Text(
                "Current Screen: ${_getScreenType(context)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Adaptive Box
              Container(
                width: context.adaptive(100.0, 300.0, sm: 200.0),
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Adaptive Box",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Adaptive Font Size
              Text(
                "Adaptive Font Size",
                style: TextStyle(
                  fontSize: context.adaptive(14.0, 24.0, sm: 18.0, md: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Determines the current screen type
  String _getScreenType(BuildContext context) {
    if (context.isMobile) return "Mobile";
    if (context.isTablet) return "Tablet";
    return "Desktop";
  }
}
```

---

## 🛠 **How Adaptive Utilities Work?**

### **What is `context.adaptive()`?**
`context.adaptive()` **automatically adjusts UI properties** based on screen size.  
This allows **dynamic UI scaling** without manually checking screen widths.

#### **Example Usage:**

```dart
context.adaptive(
  10.0,  // Mobile (xs)
  40.0,  // Desktop (lg)
  sm: 20.0, // Small tablets (sm)
  md: 30.0  // Large tablets (md)
);
```

### 💡 **How it Works**

| **Device Type**  | **Value Used** |
|-----------------|---------------|
| Extra Small (xs) - Mobile | `10.0` |
| Small (sm) - Small Tablet | `20.0` |
| Medium (md) - Large Tablet | `30.0` |
| Large (lg) - Desktop | `40.0` |

---

## 🌟 **Common Use Cases for `context.adaptive()`**

### 1️⃣ **Adaptive Padding**
```dart
padding: EdgeInsets.all(
  context.adaptive(8.0, 32.0, sm: 16.0, md: 24.0),
),
```

✔️ Mobile: **8.0**  
✔️ Tablet: **16.0 or 24.0**  
✔️ Desktop: **32.0**

---

### 2️⃣ **Adaptive Container Width**
```dart
width: context.adaptive(100.0, 300.0, sm: 200.0),
```

✔️ Mobile: **100.0**  
✔️ Small Tablet: **200.0**  
✔️ Desktop: **300.0**

---

### 3️⃣ **Adaptive Font Size**
```dart
style: TextStyle(
  fontSize: context.adaptive(14.0, 24.0, sm: 18.0, md: 20.0),
),
```

✔️ Mobile: **14.0**  
✔️ Small Tablet: **18.0**  
✔️ Large Tablet: **20.0**  
✔️ Desktop: **24.0**

---

### 4️⃣ **Detecting Screen Type**
```dart
if (context.isMobile) {
  print("This is a mobile device");
} else if (context.isTablet) {
  print("This is a tablet");
} else {
  print("This is a desktop");
}
```

✔️ Helps in adjusting **layouts dynamically**.

---


## 🔗 **More Resources**

📖 **Flutter Documentation**: [flutter.dev](https://flutter.dev)  
📦 **Flextrix on Pub.dev**: [pub.dev/packages/flextrix](https://pub.dev/packages/flextrix)

---

## 👤 **Author**

**Chinmay Nagar** – *Flutter Developer & Tech Enthusiast*

🔗 **Portfolio**: [chinmaynagar-dev.web.app](https://chinmaynagar-dev.web.app/)  
💼 **LinkedIn**: [linkedin.com/in/chinmaynagar](https://www.linkedin.com/in/chinmaynagar/)  
📧 **Email**: [nagar.chinmay.7@gmail.com](mailto:nagar.chinmay.7@gmail.com)

---

## 📝 **License**
This project is licensed under the **MIT License**.

---

Now your **Flutter app is fully responsive** using **Flextrix**! 🚀  
Drop a ⭐ if you like this package! ❤️

---

This version makes the **README** look highly professional, **developer-friendly**, and **perfect for pub.dev**. 🚀