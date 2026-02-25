
#!/bin/bash

# Crear estructura de carpetas
mkdir -p GesPI/app/src/main/java/com/gespi/app
mkdir -p GesPI/app/src/main/res/drawable
mkdir -p GesPI/app/src/main/res/mipmap
mkdir -p GesPI/app/src/main/res/values
mkdir -p GesPI/app/src/test
mkdir -p GesPI/app/src/androidTest

# Crear archivos vacíos
cd GesPI

touch app/src/main/AndroidManifest.xml
cat > app/src/main/AndroidManifest.xml << 'EOF'
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.gespi.app">

    <application
        android:allowBackup="true"
        android:label="GesPI"
        android:supportsRtl="true"
        android:theme="@style/Theme.Material3.DayNight.NoActionBar">
        <activity android:name=".MainActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
EOF

# MainActivity.kt
cat > app/src/main/java/com/gespi/app/MainActivity.kt << 'EOF'
package com.gespi.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            GesPIApp()
        }
    }
}

@Composable
fun GesPIApp() {
    Surface(color = MaterialTheme.colorScheme.background) {
        Greeting("Bienvenido a GesPI")
    }
}

@Composable
fun Greeting(message: String) {
    Text(text = message, style = MaterialTheme.typography.headlineMedium)
}
EOF

# strings.xml
cat > app/src/main/res/values/strings.xml << 'EOF'
<resources>
    <string name="app_name">GesPI</string>
</resources>
EOF

# build.gradle.kts del módulo app
cat > app/build.gradle.kts << 'EOF'
plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android") version "2.2.21"
}

android {
    namespace = "com.gespi.app"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.gespi.app"
        minSdk = 24
        targetSdk = 35
        versionCode = 1
        versionName = "1.0"
    }

    buildFeatures {
        compose = true
    }

    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.15"
    }

    kotlinOptions {
        jvmTarget = "17"
    }
}

dependencies {
    implementation("androidx.activity:activity-compose:1.9.0")
    implementation("androidx.compose.ui:ui:1.7.0")
    implementation("androidx.compose.ui:ui-tooling-preview:1.7.0")
    implementation("androidx.compose.material3:material3:1.2.0")

    debugImplementation("androidx.compose.ui:ui-tooling:1.7.0")
    debugImplementation("androidx.compose.ui:ui-test-manifest:1.7.0")

    androidTestImplementation("androidx.compose.ui:ui-test-junit4:1.7.0")
}
EOF

# settings.gradle.kts
cat > settings.gradle.kts << 'EOF'
rootProject.name = "GesPI"
include(":app")
EOF

# build.gradle.kts global
cat > build.gradle.kts << 'EOF'
plugins {
    id("com.android.application") version "8.5.0" apply false
    id("org.jetbrains.kotlin.android") version "2.2.21" apply false
}
EOF

# gradle.properties
cat > gradle.properties << 'EOF'
org.gradle.jvmargs=-Xmx2048m -Dfile.encoding=UTF-8
EOF

# proguard-rules.pro
cat > app/proguard-rules.pro << 'EOF'
# ProGuard rules for GesPI
EOF

iniciales configurados para Kotlin 2.2.21, AGP 8.5.0, minSdk 24, targetSdk 35 y Jetpack Compose habilitado.