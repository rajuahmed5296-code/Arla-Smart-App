import 'package:flutter/material.dart';

void main() {
  runApp(const ArlaSmartApp());
}

class ArlaSmartApp extends StatelessWidget {
  const ArlaSmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arla Smart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arla Smart - Field Sales'),
        backgroundColor: const Color(0xFF006837),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              color: Color(0xFF006837),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.white, size: 40),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome, Sales Representative', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text('Territory: Patuakhali', style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Daily Overview', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const [
                  Card(child: Center(child: Text('Target\n৳ 500,000', textAlign: TextAlign.center))),
                  Card(child: Center(child: Text('Sales\n৳ 425,000', textAlign: TextAlign.center))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
