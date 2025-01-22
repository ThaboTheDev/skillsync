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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  String? selectedRole;
  String? selectedExpertise;
  final List<String> dropdownRoles = ['mentor', 'mentee'];
  final List<String> dropdownExpertise = ['Junior', 'intermediate','senior'];

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

  Future<void> _signup() async {
    showLoadingDialog(context);

    var valid = await signUpWithEmail(
      nameController.text + surnameController.text, 
      emailController.text,
      passwordController.text,
      selectedRole!,
      selectedExpertise!
    );
    if (valid) {
      emailController.clear();
      passwordController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green,),
              const SizedBox(width: 10,),
              Text('Signup successful!')
            ],
          )
        ),
      );
      Navigator.popAndPushNamed(context, '/login');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(Icons.error, color: Colors.red,),
              const SizedBox(width: 10,),
              Text('Signup failed!')
            ],
          )
        ),
      );
      Navigator.pop(context);
    }
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
                'SignUp:',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              const SizedBox(height: 30,),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
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
                controller: surnameController,
                decoration: InputDecoration(
                  hintText: 'Surname',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
              DropdownButton<String>(
                value: selectedRole,
                hint: Text('Select a Role'),
                items: dropdownRoles.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newRole) {
                  setState(() {
                    selectedRole = newRole;
                  });
                },
              ),
              const SizedBox(height: 10,),
              DropdownButton<String>(
                value: selectedExpertise,
                hint: Text('Select your Expertise'),
                items: dropdownExpertise.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newExpertise) {
                  setState(() {
                    selectedExpertise = newExpertise;
                  });
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () async {
                  await _signup();
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