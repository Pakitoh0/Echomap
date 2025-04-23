import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_state.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text('Create your account for a personalized audiology experience'),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Enter your first name'),
                onSaved: (value) => firstName = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Enter your last name'),
                onSaved: (value) => lastName = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Your email address'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => email = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Create a password'),
                obscureText: true,
                onSaved: (value) => password = value,
              ),
              const SizedBox(height: 10),
              const Text('Your audiology preferences'),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: const Text('I agree with Terms & Conditions'),
                value: agreeToTerms,
                onChanged: (value) => setState(() => agreeToTerms = value ?? false),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Sign Up'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<AppState>().login();
                    context.read<AppState>().navigateTo(AppScreen.home);
                  }
                },
              ),
              TextButton(
                child: const Text('Already registered? Log In'),
                onPressed: () {
                  // Implement login navigation
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}