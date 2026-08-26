import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CC 302 Activity'),
        ),
        body: const Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // First Container: Math Card
                  MathCardWidget(),
                  SizedBox(width: 16),
                  // Second Container: Geography Card
                  GeographyCardWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Left Container: Math Card
class MathCardWidget extends StatelessWidget {
  const MathCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue, // Blue color specified on whiteboard
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with Calculator Icon and Bold White Text
          const Row(
            children: [
              Icon(Icons.calculate, color: Colors.white, size: 24), // Calculator Icon
              SizedBox(width: 8),
              Text(
                'Math Card',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Equations in Column
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('2 x 2', style: TextStyle(color: Colors.white, fontSize: 14)),
              Text('2 x 3', style: TextStyle(color: Colors.white, fontSize: 14)),
              Text('2 x 4', style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

/// Right Container: Geography Card
class GeographyCardWidget extends StatelessWidget {
  const GeographyCardWidget({super.key});

  @override
  Widget softwareApp(BuildContext context) => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red, // Red color specified on whiteboard
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with centered text concept
          const Center(
            child: Text(
              'Geography Card',
              style: TextStyle(
                color: Colors.white, // White text color specified
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          // World Map (with Map Icon/Logo) and Location (with Location Icon) in Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // crossAxisAlignment.start as noted
            children: [
              Row(
                children: const [
                  Icon(Icons.map, color: Colors.white, size: 20), // Map Logo/Icon
                  SizedBox(width: 8),
                  Text(
                    'World Map',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  Icon(Icons.location_on, color: Colors.white, size: 20), // Location Icon/Logo
                  SizedBox(width: 8),
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}