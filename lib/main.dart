import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _myButton(context),
              _myIcons(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return const Text(
    "Sign In",
    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
  );
}

_inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: "Username",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: const Color.fromARGB(255, 85, 78, 87).withOpacity(0.1),
          filled: true,
          // prefixIcon: const Icon(Icons.person)
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: const Color.fromARGB(255, 89, 84, 90).withOpacity(0.1),
          filled: true,
        ),
        obscureText: true,
      ),
    ],
  );
}

_forgotPassword(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end, // Align the content to the right
    children: <Widget>[
      const Spacer(), // Add a spacer to push the button to the right
      TextButton(
        onPressed: () {},
        child: const Text(
          "Forgot password?",
          style: TextStyle(color: Color.fromARGB(255, 64, 63, 65)),
        ),
      ),
    ],
  );
}

_myButton(context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 145),
      backgroundColor: const Color.fromARGB(255, 82, 160, 206),
    ),
    child: const Text("Login",
        style: TextStyle(fontSize: 20), selectionColor: Colors.white),
  );
}

_myIcons(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      _buildIcon('assets/facebook.svg'),
      const SizedBox(width: 10), // Add some space between icons
      _buildIcon('assets/twitter.svg'),
      const SizedBox(width: 10), // Add some space between icons
      _buildIcon('assets/linkedin.svg'),
    ],
  );
}

Widget _buildIcon(String assetName) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), // Set the border radius here
      color: Colors.grey[200], // Optional: Set a background color for the icons
    ),
    padding: const EdgeInsets.all(8), // Optional: Add padding to the icons
    child: SvgPicture.asset(
      assetName,
      width: 60,
      height: 60,
    ),
  );
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Dont have an account? "),
      TextButton(
          onPressed: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.purple),
          ))
    ],
  );
}
