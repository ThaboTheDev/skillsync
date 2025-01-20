import 'package:flutter/material.dart';
import 'package:skillsync/backend/user_auth.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});
  
  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SkillSync',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 5,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'SignUp:',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                  ),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Passowrd',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () async {
                  var valid = await signUpWithEmail(emailController.text, passwordController.text);
                  if (valid) {
                    emailController.clear();
                    passwordController.clear();
                    Navigator.popAndPushNamed(context, '/login');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Signup failed')),
                    );
                  }
                }, 
                child: const Text(
                  'SignUp',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/login'), 
                child: const Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}