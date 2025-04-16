package com.example.screen_time_test

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class FlutterBlockScreen : FlutterActivity() {
    private val CHANNEL = "flutter_screentime/chat"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Handle route navigation
        val route = intent.getStringExtra("route") ?: "/main"
        flutterEngine.navigationChannel.setInitialRoute(route)

        // Setup method channel for chat opening
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "openChat"){
                openChatScreen()
                result.success(null)
            }else {
                result.notImplemented()
            }
        }
    }

    private fun openChatScreen() {
        // Start the Flutter app with the chat screen route
        val intent = Intent(this, MainActivity::class.java)
        intent.putExtra("route", "/chat")
        startActivity(intent)
    }


    override fun onBackPressed() {
        // Do nothing to block back button
    }
}