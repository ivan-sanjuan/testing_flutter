import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Food App', home: ItemScreen());
  }
}

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food')),
      body: Column(
        children: [
          const ItemSelector(
            title: 'Fruits',
            icon: Icons.apple,
            description: 'Lorem ipsum dolor sit amet...',
          ),
          const ItemSelector(
            title: 'Fruits',
            icon: Icons.apple,
            description: 'Lorem ipsum dolor sit amet...',
          ),
          const ItemSelector(
            title: 'Fruits',
            icon: Icons.apple,
            description: 'Lorem ipsum dolor sit amet...',
          ),
        ],
      ),
    );
  }
}

class ItemSelector extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;

  const ItemSelector({
    required this.title,
    required this.icon,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Icon(icon, size: 40),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4),
                Text(description, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 8),
                Text('See all ->', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
