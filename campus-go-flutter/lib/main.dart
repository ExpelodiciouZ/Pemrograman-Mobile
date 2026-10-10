import 'package:flutter/material.dart';

import 'widgets/student_info_card.dart';
import 'widgets/absensi_info_card.dart';
import 'widgets/custom_button.dart';

void main() {
  runApp(const CampusGoApp());
}

// 1. CampusGoApp hanya bertugas memuat MaterialApp
class CampusGoApp extends StatelessWidget {
  const CampusGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusGo',
      home: CampusGoHomePage(),
    );
  }
}

// 2. Halaman utama dipisah ke StatefulWidget tersendiri
class CampusGoHomePage extends StatefulWidget {
  const CampusGoHomePage({super.key});

  @override
  State<CampusGoHomePage> createState() => _CampusGoHomePageState();
}

class _CampusGoHomePageState extends State<CampusGoHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Di sini context sudah berada di DALAM MaterialApp, sehingga ScaffoldMessenger aman digunakan
    return Scaffold(
      appBar: AppBar(title: const Text('CampusGo')),
      body: Center(
        child: SingleChildScrollView(
          // Mencegah overflow jika layar HP kecil
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
              const SizedBox(height: 12),
              Text(
                'Total Aktivitas: $_counter',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              CustomButton(
                label: 'Mulai',
                icon: Icons.play_arrow,
                type: CustomButtonType.primary,
                onPressed: () {
                  _incrementCounter();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Aktivitas Berhasil Dimulai!'),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              OutlinedButton(onPressed: () {}, child: const Text('Mulai')),
              const SizedBox(height: 12),
              TextButton(onPressed: () {}, child: const Text('Mulai')),
              const StudentInfoCard(),
              const SizedBox(height: 12),
              const AbsensiInfoCard(),
            ],
          ),
        ),
      ),
    );
  }
}
