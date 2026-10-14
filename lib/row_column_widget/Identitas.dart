import 'package:flutter/material.dart';

class Identitas extends StatelessWidget {
  const Identitas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Container(
        width: 300,
        height: 200,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(color: Colors.lightBlueAccent, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
          child: Container(
            width: 300,
            height: 200,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 212, 4, 4),
              border: Border.all(color: Colors.lightBlueAccent, width: 2),
              borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            'Nama: Mochamad Defahni\nKelas: XII RPL\nNis: 0000000000',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class LabelKelas extends StatelessWidget {
  const LabelKelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'Kelas XII RPL',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}