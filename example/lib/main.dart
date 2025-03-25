/// Flextrix Example App
/// Author: Chinamy Nagar
/// Description:
/// A Flutter example demonstrating the usage of the Flextrix package.
/// It provides adaptive UI utilities and automatically wraps the app in a responsive layout.

import 'package:flutter/material.dart';
import 'package:flextrix/flextrix.dart'; // Import the Flextrix package

void main() {
  runApp(FlextrixExampleApp().addFlextrix()); // Automatically wraps with Layout
}

/// The root widget of the application.
/// This sets up the `MaterialApp` and specifies the `home` screen.
class FlextrixExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      home: ResponsiveHomePage(), // Sets the home screen
    );
  }
}

/// A sample responsive page demonstrating the use of Flextrix utilities.
class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a title
      appBar: AppBar(title: Text("Flextrix Example")),

      // Body with adaptive padding and responsive widgets
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(
            context.adaptive(
              8.0, // Extra Small (xs) screens
              32.0, // Large (lg) screens
              sm: 16.0, // Small (sm) screens
              md: 24.0, // Medium (md) screens
            ), // Uses `adaptive()` to adjust padding based on screen size
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displays Current Screen Type (Mobile, Tablet, or Desktop)
              Text(
                "Current Screen: ${_getScreenType(context)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Adaptive Box - The size changes based on screen width
              Container(
                width: context.adaptive(
                  100.0, // Extra Small (xs)
                  300.0, // Large (lg) screens
                  sm: 200.0, // Small (sm) screens
                ),
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

              // Adaptive Font Size - Text size adjusts based on screen size
              Text(
                "Adaptive Font Size",
                style: TextStyle(
                  fontSize: context.adaptive(
                    14.0, // Extra Small (xs) screens
                    24.0, // Large (lg) screens
                    sm: 18.0, // Small (sm) screens
                    md: 20.0, // Medium (md) screens
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Determines the current screen type (Mobile, Tablet, or Desktop)
  String _getScreenType(BuildContext context) {
    if (context.isMobile) return "Mobile";
    if (context.isTablet) return "Tablet";
    return "Desktop";
  }
}
