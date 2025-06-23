import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'tanvirchy269@gmail.com',
    );
    await launchUrl(emailUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF60438F),
      appBar: AppBar(
        title: const Text('Developer'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF60438F), Color(0xFF6E50A2), Color(0xFF596394)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            color: Colors.white.withOpacity(0.9),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/tan.png'),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Tanvir Ahmed Chowdhury',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Software Developer',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Fuelled by code and driven by creativity, I turn ideas into powerful digital experiences.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),

                  // Social Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _socialButton(
                        icon: 'assets/gmail.png',
                        label: 'Email',
                        onTap: _sendEmail,
                      ),
                      _socialButton(
                        icon: 'assets/whatsapp.png',
                        label: 'Whatsapp',
                        onTap: () => _launchUrl(
                          'https://wa.me/8801914627085?text=Assalamu%20Alaikum%2C%20Brother',
                        ),
                      ),
                      _socialButton(
                        icon: 'assets/linkedin.png',
                        label: 'LinkedIn',
                        onTap: () => _launchUrl(
                          'https://www.linkedin.com/in/tanvir-ahmed-chy-126191367/',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ElevatedButton.icon(
                  //   onPressed: () => _launchUrl(
                  //     'https://play.google.com/store/apps/developer?id=YourDeveloperID',
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: const Color(0xFF60438F),
                  //     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  //   ),
                  //   icon: Image.asset(
                  //     'assets/app.png',
                  //     height: 20,
                  //     width: 20,
                  //     color: Colors.white,
                  //   ),
                  //   label: const Text('View More Apps'),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton({
    required String icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        Ink(
          decoration: const ShapeDecoration(
            color: Color(0xFF60438F),
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Image.asset(icon, height: 26, width: 26, color: Colors.white),
            onPressed: onTap,
            iconSize: 26,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
