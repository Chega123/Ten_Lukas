import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Dina-Boluarte-10-Soles.jpg'),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 16),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata),
                  label: const Text('Google'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Forgot Password?'),
                    SizedBox(width: 16),
                    Text('Sign Up', style: TextStyle(color: Colors.green)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
