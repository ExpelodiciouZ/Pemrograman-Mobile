import 'package:flutter/material.dart';

void main() {
  runApp(const CampusGoApp());
}

/// Root Widget aplikasi CampusGo
class CampusGoApp extends StatelessWidget {
  const CampusGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusGo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),

      // Scaffold digunakan sebagai struktur dasar halaman.
      home: Scaffold(
        appBar: AppBar(title: const Text('CampusGo')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.school, size: 80),
                const SizedBox(height: 16),
                const Text(
                  'CampusGo',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text('Mobile Academic Information System'),
                const SizedBox(height: 24),
                ElevatedButton(onPressed: () {}, child: const Text('Mulai')),
                const SizedBox(height: 24),
                const StudentInfoCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StudentInfoCard extends StatelessWidget {
  const StudentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 32, color: Colors.indigo.shade700),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jeffry',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '411232050',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                SizedBox(height: 2),
                Text(
                  'Teknik Informatika',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
