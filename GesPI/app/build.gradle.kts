plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android") version "2.2.21"
 j   id("org.jetbrains.kotlin.plugin.compose") version "2.0.0"
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

