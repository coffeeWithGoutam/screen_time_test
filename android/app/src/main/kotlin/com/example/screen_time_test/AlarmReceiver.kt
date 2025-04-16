package com.example.screen_time_test

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import androidx.core.content.edit

class AlarmReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        val sharedPreferences =  context?.getSharedPreferences("app_settings", Context.MODE_PRIVATE)
        sharedPreferences?.edit() {
            this.putBoolean("Blocking", false)
        }
    }
}