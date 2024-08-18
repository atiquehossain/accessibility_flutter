import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Column(
        children: [
          Semantics(
            excludeSemantics: true,
            hint: '2 minus bracket 3 over 5',
            child: const Text('2 - (3/5)'),
          ),
      Center(
        child: ElevatedButton(
          onPressed: _openAccessibilitySettings,
          child: const Text('Open Accessibility Settings'),
        ),
      ),

        ],
      ),
    ));
  }

  void _openAccessibilitySettings() {
    const intent = AndroidIntent(
      action: 'android.settings.ACCESSIBILITY_SETTINGS',
      flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
    );
    intent.launch();
  }
}
