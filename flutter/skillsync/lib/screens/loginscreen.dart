import 'package:flutter/material.dart';
import 'package:skillsync/backend/user_auth.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SkillSync'),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login: '),
            const SizedBox(height: 30,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: const Text('Email'),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                label: const Text('Password'),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                login(emailController.text, passwordController.text);
                emailController.clear();
                passwordController.clear();
                Navigator.popAndPushNamed(context, '/main');
              }, 
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => Navigator.popAndPushNamed(context, '/sign'), 
              child: const Text('signup'),
            ),
          ],
        ),
      ),
    );
  }
}