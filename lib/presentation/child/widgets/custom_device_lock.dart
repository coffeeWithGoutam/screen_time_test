import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const platform = MethodChannel('flutter_screentime/chat');

class CustomDeviceLock extends StatelessWidget {
  const CustomDeviceLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(color: Color(0XFF0B1A2C).withValues(alpha: 0.6)),
          ),

          /// UI Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your Phone is blocked\nby Your Guardian",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Now you can only chat or record\na message to Guardian",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () async {
                    try {
                      await platform.invokeMethod(
                        'openChat',
                      ); // Call native method
                    } on PlatformException catch (e) {
                      debugPrint("Failed to open chat: '${e.message}'.");
                    }
                  },
                  icon: Icon(Icons.chat),
                  label: Text("Chat"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
