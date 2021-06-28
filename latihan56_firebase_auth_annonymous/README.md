# latihan56_firebase_auth_annonymous

Flutter Project Using FirebaseAuth Annonymous

## Getting Started

## download google-services.json from registering app in firebase -> android/profile/AndroidManifest (id app)

google-services.json

## add dependencies at android/build.gradle

dependencies {
classpath 'com.android.tools.build:gradle:4.1.0'
classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
classpath 'com.google.gms:google-services:4.3.8'
}

## apply plugin at app/src/build.gradle

apply plugin: 'com.google.gms.google-services'

## in new version of firebase

AuthResult -> UserCredential
FirebaseUser -> User
onAuthStateChanged -> authStateChanges
