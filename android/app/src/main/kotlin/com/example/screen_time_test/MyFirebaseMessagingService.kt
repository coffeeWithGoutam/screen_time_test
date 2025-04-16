package com.example.screen_time_test

import android.content.Intent
import android.util.Log
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage

class MyFirebaseMessagingService : FirebaseMessagingService() {
    override fun onMessageReceived(message: RemoteMessage) {
        Log.d("MyFirebaseMessaging", "Message received: ${message.data}")
        val isLocked = message.data["isLocked"]
        val intent = Intent("com.example.parensight_app.BLOCK_CONTROL")
        intent.setPackage("com.example.parensight_app")
        intent.putExtra("isLocked", isLocked)
        sendBroadcast(intent)
    }

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        println("FCM token refreshed: $token")
    }
}
