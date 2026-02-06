import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lainnya'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMenuItem(
            icon: Icons.calendar_today,
            title: 'Kalender Akademik',
            subtitle: 'Lihat jadwal akademik',
            color: Colors.blue,
            onTap: () {},
          ),
          _buildMenuItem(
            icon: Icons.library_books,
            title: 'Perpustakaan',
            subtitle: 'Akses koleksi buku',
            color: Colors.green,
            onTap: () {},
          ),
          _buildMenuItem(
            icon: Icons.payment,
            title: 'Pembayaran',
            subtitle: 'Riwayat pembayaran',
            color: Colors.orange,
            onTap: () {},
          ),
          _buildMenuItem(
            icon: Icons.announcement,
            title: 'Pengumuman',
            subtitle: 'Lihat pengumuman terbaru',
            color: Colors.red,
            onTap: () {},
          ),
          _buildMenuItem(
            icon: Icons.chat,
            title: 'Pesan',
            subtitle: 'Komunikasi dengan guru',
            color: Colors.purple,
            onTap: () {},
          ),
          _buildMenuItem(
            icon: Icons.settings,
            title: 'Pengaturan',
            subtitle: 'Atur preferensi aplikasi',
            color: Colors.grey,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
