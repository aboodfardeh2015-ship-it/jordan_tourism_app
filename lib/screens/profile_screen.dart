import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> openGithub() async {
    final Uri url =
        Uri.parse("https://github.com");

    if (!await launchUrl(url)) {
      throw Exception("Could not launch URL");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Jordan Tourism Guide",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Flutter Final Project",
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: openGithub,
                child: const Text("Visit GitHub"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}