import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Gradients',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Flutter Gradients'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LinearGradientPage()),
                );
              },
              child: const Text('Linear Gradient'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RadialGradientPage()),
                );
              },
              child: const Text('Radial Gradient'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SweepGradientPage()),
                );
              },
              child: const Text('Sweep Gradient'),
            ),
          ],
        ),
      ),
    );
  }
}

class LinearGradientPage extends StatelessWidget {
  const LinearGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Gradient'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.blue],
          ),
        ),
        child: const Center(
          child: Text(
            'Gradients are cool!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class RadialGradientPage extends StatelessWidget {
  const RadialGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Gradient'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
            stops: [0.2, 0.5, 0.7, 1],
          ),
        ),
        child: const Center(
          child: Text(
            'Gradients are cool!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class SweepGradientPage extends StatelessWidget {
  const SweepGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sweep Gradient'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: SweepGradient(
            colors: [
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors.blue
            ],
            stops: [0.0, 0.25, 0.5, 0.75, 1],
          ),
        ),
        child: const Center(
          child: Text(
            'Gradients are cool!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}