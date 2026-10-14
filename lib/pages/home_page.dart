import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Halaman Home'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: const Text('Go to About'),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Halaman Instagram'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/instagram');
                    },
                    child: const Text('Go to Insta'),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Halaman X Profile'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/twitter-profile');
                    },
                    child: const Text('Go to X Profile'),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Halaman Grid'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/grid'); 
                    },
                    child: const Text('Go to Grid'),
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