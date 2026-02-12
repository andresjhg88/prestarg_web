import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prestarg',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Inicio'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Características'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Contacto'),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              color: Theme.of(context).primaryColor.withOpacity(0.05),
              child: Column(
                children: [
                  Text(
                    'Gestiona tus préstamos de forma fácil',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'La mejor aplicación para llevar el control de tus finanzas y préstamos personales.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Add download link
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Descargar Demo'),
                  ),
                ],
              ),
            ),
            
            // Features Placeholder
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                   Text(
                    'Características Principales',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 40,
                    runSpacing: 40,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildFeatureCard(
                        Icons.monetization_on,
                        'Control de Préstamos',
                        'Lleva un registro detallado de cada préstamo realizado.',
                      ),
                      _buildFeatureCard(
                        Icons.notifications,
                        'Recordatorios',
                        'Recibe notificaciones de pagos pendientes.',
                      ),
                      _buildFeatureCard(
                        Icons.bar_chart,
                        'Estadísticas',
                        'Visualiza el rendimiento de tus finanzas.',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[900],
              width: double.infinity,
              child: const Text(
                '© 2024 Prestarg. Todos los derechos reservados.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(IconData icon, String title, String description) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: Colors.blue),
          const SizedBox(height: 20),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
