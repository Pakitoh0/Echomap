import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevicePairingScreen extends StatelessWidget {
  const DevicePairingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Pairing')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bluetooth Pairing Instructions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('1. Turn on Bluetooth on your device.'),
            const Text('2. Put your headphones in pairing mode.'),
            const Text('3. Select your headphones from the list.'),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                child: const Text('Connect'),
                onPressed: () {
                  // Implement connection logic
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}