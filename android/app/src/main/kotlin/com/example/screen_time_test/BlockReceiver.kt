package com.example.screen_time_test

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log

class BlockReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        val isLocked = intent?.getStringExtra("isLocked")
        Log.d("BlockReceiver", "Received Broadcast: isLocked=$isLocked")

        val prefs = context.getSharedPreferences("app_settings", Context.MODE_PRIVATE)
        val editor = prefs.edit()

        if (isLocked == "true") {
            editor.putBoolean("Blocking", true)
            editor.putBoolean("isBlocking", true)
            editor.apply()

            val serviceIntent = Intent(context, BlockAppService::class.java)
            context.startForegroundService(serviceIntent)
        } else {
            editor.putBoolean("Blocking", false)
            editor.apply()
        }
    }
}
