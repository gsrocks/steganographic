import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:steganographic/common/ui/image_card.dart';
import 'package:steganographic/l10n/resources.dart';

@RoutePage()
class EmbedMessagePage extends StatelessWidget {
  const EmbedMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EEE6), // TODO: add to theme
      appBar: AppBar(
        title: Text(R.strings.embedMessage),
        backgroundColor: const Color(0xFFF0EEE6), // TODO: add to theme
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 130),
              child: ImageCard(
                onTap: () {
                  // TODO: implement
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.image_outlined),
                    const SizedBox(width: 8),
                    Text(R.strings.pickImage)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: Text(R.strings.secretMessage),
              subtitle: const Text(
                'Never gonna give you up, never gonna let you down',
              ),
              // TODO: create state,
              onTap: () {
                // TODO: implement
              },
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.data_object),
              title: Text(R.strings.algorithm),
              subtitle: const Text('LSB'), // TODO: create state,
              onTap: () {
                // TODO: implement
              },
            ),
            const SizedBox(height: 36),
            FilledButton(
              onPressed: () {
                // TODO: implement
              },
              child: Text(R.strings.embed),
            ),
          ],
        ),
      ),
    );
  }
}
