import 'dart:ffi';

import 'package:flutter/material.dart';


class TextFromFiled extends StatefulWidget {
   TextFromFiled({super.key});

  @override
  State<TextFromFiled> createState() => _TextFormFiledState();
}

class _TextFormFiledState extends State<TextFromFiled> {
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Form App')),
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
            children: [
             Padding(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              ),
              const SizedBox( height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Name: ${_nameController.text}');
                  }
                },
                child: const Text('Get name')
                ),
            ],
          )),
        ),
      ),
    );
  }
}