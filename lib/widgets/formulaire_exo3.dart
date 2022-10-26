import 'package:flutter/material.dart';

class FormExo3 extends StatefulWidget {
  const FormExo3({super.key});

  @override
  FormExo3State createState() {
    return FormExo3State();
  }
}

class FormExo3State extends State<FormExo3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.description_outlined,
              color: Colors.red,
              size: 60,
            ),
            const Text('Note de frais'),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  const Text('Email*'),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  const Text('Mot de passe*'),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Connexion'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
