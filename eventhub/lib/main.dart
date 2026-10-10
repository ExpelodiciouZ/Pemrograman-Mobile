import 'package:flutter/material.dart';

void main() {
  runApp(const EventHubApp());
}

class EventHubApp extends StatelessWidget {
  const EventHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const EventHubHomePage(),
    );
  }
}

class EventHubHomePage extends StatelessWidget {
  const EventHubHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fitur 1: AppBar berjudul "EventHub"
      appBar: AppBar(title: const Text('EventHub'), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          // Seluruh komponen tersusun vertikal & di tengah halaman
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ikon event/calendar ukuran besar
              const Icon(Icons.event, size: 100, color: Colors.indigo),
              const SizedBox(height: 16),
              // Tulisan "EventHub" besar & bold
              const Text(
                'EventHub',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // Subtitle
              const Text(
                'Student Event Information',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              // Tombol "Lihat Event"
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Menampilkan daftar event...'),
                    ),
                  );
                },
                child: const Text('Lihat Event'),
              ),
              const SizedBox(height: 24),
              // Fitur 2: kartu informasi event
              Card(
                elevation: 4, // bayangan
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // sudut membulat
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0), // padding kartu
                  child: Row(
                    children: [
                      // Ikon lingkaran di sebelah kiri
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.indigo,
                        child: Icon(Icons.event, color: Colors.white, size: 28),
                      ),
                      SizedBox(width: 16),
                      // Informasi event di sebelah kanan ikon
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Nama kegiatan: besar & bold
                            Text(
                              'Seminar Teknologi 2026',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            // Kode event: font lebih kecil
                            Text('EVT2026001', style: TextStyle(fontSize: 14)),
                            SizedBox(height: 2),
                            // Penyelenggara: font lebih kecil
                            Text(
                              'Himpunan Mahasiswa Informatika',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
