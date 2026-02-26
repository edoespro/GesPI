plugins {
     id("com.android.application") 
     id("org.jetbrains.kotlin.android") `   id("org.jetbrains.kotlin.plugin.compose") version "2.0.0" }

android { namespace = "com.gespi.app" compileSdk = 35

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

kotlin {
    compilerOptions {
        jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
    }
}

}

dependencies { implementation("androidx.core:core-ktx:1.15.0") implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.8.7") implementation("androidx.activity:activity-compose:1.9.3") implementation(platform("androidx.compose:compose-bom:2025.02.00")) implementation("androidx.compose.ui:ui") implementation("androidx.compose.ui:ui-graphics") implementation("androidx.compose.ui:ui-tooling-preview") implementation("androidx.compose.material3:material3") debugImplementation("androidx.compose.ui:ui-tooling") debugImplementation("androidx.compose.ui:ui-test-manifest") androidTestImplementation("androidx.compose.ui:ui-test-junit4") }