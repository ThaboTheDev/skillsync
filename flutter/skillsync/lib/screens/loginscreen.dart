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

  Future<void> _login(email, password) async {

    showLoadingDialog(context);

    var valid = await login(email, password);
    if (valid) {
      emailController.clear();
      passwordController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green,),
              const SizedBox(width: 10,),
              Text('Login successful!')
            ],
          )
        ),
      );
      // Navigator.pop(context);
      Navigator.popAndPushNamed(context, '/main');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(Icons.error, color: Colors.red,),
              const SizedBox(width: 10,),
              Text('Login failed!')
            ],
          )
        ),
      );
      Navigator.pop(context);
    }
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
  
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
                'Login: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: emailController,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
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
                  await _login(emailController.text, passwordController.text);
                }, 
                child: Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/sign'), 
                child: const Text('signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}