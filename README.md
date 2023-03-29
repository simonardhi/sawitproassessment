# sawitproassessment
A new Flutter project.

## Getting Started

Setup environment for flutter can see in this link https://docs.flutter.dev/get-started/install/windows

Step by step to run this source code
1. git clone https://github.com/simonardhi/sawitproassessment
2. cd fluttercamerageolocation
3. Update AndroidManifest.xml in /app/src/main/AndroidManifest.xml to add
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
4. Update /app/build.gradle to change
    compileSdkVersion: 33
    minSdkVersion: 19
    targetSdkVersion: 32
5. flutter pub get
6. flutter run

to generate android APK application run flutter build apk