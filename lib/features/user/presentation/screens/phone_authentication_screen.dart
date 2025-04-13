import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';

class PhoneAuthenticationScreen extends StatelessWidget {
  const PhoneAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Authentication')),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Phone Authentication Screen'),
            ElevatedButton(
              onPressed: () {
                // Add your authentication logic here
              },
              child: const Text('Authenticate'),
            ),
          ],
        ),
      ),
    );
  }
}
