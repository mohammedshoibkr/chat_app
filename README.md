# run
$cd android; ./gradlew clean
$cd ..; react-native run-android

# release build
Step 1: Increment the build number in "android\app\build.gradle" file (in "app.json" also)
$cd android; ./gradlew assembleRelease

# Debug with breakpoints
https://stackoverflow.com/questions/51666188/how-to-debug-react-native-apps-in-visual-studio-code/56233781#56233781
After the debug is started, enter the following command in terminal to show the option on app, select "Debug" option from there:
$adb shell input keyevent 82

# Supr_New
 Food Delivery App For daily Item sale
 
 # Install latest firebase package
 npm i @react-native-firebase/app

# To list the devices
$adb devices
# Commands to run the react native application
To run android app:
$react-native run-android
To generate apk for release:
Source: https://www.instamobile.io/android-development/generate-react-native-release-build-android/

From cmd (admin), go to location:C:\Program Files\Java\jre1.8.0_261\bin\
$keytool -genkey -v -keystore dudaily.keystore -alias simpfoecommercekeystore -keyalg RSA -keysize 2048 -validity 10000

Keystore password:
S!mpf0@2019

$react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/

$cd android
$./gradlew assembleRelease

*******************************************************
Enter keystore password:
Re-enter new password:
What is your first and last name?
  [Unknown]:  Jaya DN
What is the name of your organizational unit?
  [Unknown]:  Simpfo
What is the name of your organization?
  [Unknown]:  Simpfo
What is the name of your City or Locality?
  [Unknown]:  Bangalore
What is the name of your State or Province?
  [Unknown]:  KA
What is the two-letter country code for this unit?
  [Unknown]:  IN
Is CN=Jaya DN, OU=Simpfo, O=Simpfo, L=Bangalore, ST=KA, C=IN correct?
  [no]:  Y

Generating 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 10,000 days
        for: CN=Jaya DN, OU=Simpfo, O=Simpfo, L=Bangalore, ST=KA, C=IN
Enter key password for <simpfoecommercekeystore>
        (RETURN if same as keystore password):
[Storing dudaily.keystore]
*******************************************************
Debug Keystore
keytool -genkey -v -keystore debug.keystore -alias simpfoecommercedebugkeystore -keyalg RSA -keysize 2048 -validity 10000
Pwd: S!mpfo2019
Generating 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 10,000 days
        for: CN=JC, OU=Simpfo, O=Simpfo, L=Bangalore, ST=KA, C=IN
Enter key password for <simpfoecommercedebugkeystore>
*******************************************************
# Error while run android - react-native Failed to create directory

    cd android; ./gradlew clean
    cd ..; react-native run-android

# error Package signatures do not match the previously installed version
Simply uninstall existing app will solve the problem
$adb uninstall "com.nithinorganics"

# Icons
https://github.com/oblador/react-native-vector-icons/blob/master/glyphmaps/Feather.json

# Authenticating Your Client on Firebase
$cd android; ./gradlew signingReport 
===================
Replace the password in 
android\app\build.gradle file
Update the SHA1 of both debug and release in Firestore
----------
Variant: debug
Config: debug
Store: D:\Simpfo\Src\ecommerce_mobile\ecommerce_mobile\android\app\debug.keystore
Alias: simpfoecommercedebugkeystore
MD5: EF:99:A3:6A:51:EC:08:FC:5A:45:0A:19:D8:C0:C4:C4
SHA1: C0:E7:BC:D7:4F:DE:47:C5:18:43:C3:7B:D4:A5:3C:62:26:CC:71:82
SHA-256: 05:83:D0:90:F0:FF:18:8A:A9:79:A2:A9:A8:E6:E0:31:9A:B3:0D:8A:CA:B6:52:CB:E9:78:AC:7B:48:B3:AA:A3
Valid until: Monday, 4 May, 2048
-----------------
Variant: release
Config: release
Store: D:\Simpfo\Src\ecommerce_mobile\ecommerce_mobile\android\app\dudaily.keystore
Alias: simpfoecommercekeystore
MD5: F5:C7:46:13:CA:FA:6D:84:79:4E:CC:56:93:B6:DF:E5
SHA1: 8D:90:E5:2E:34:18:94:79:21:97:51:8B:B4:1A:53:BE:9F:4A:F7:92
SHA-256: CC:9D:E0:05:46:F8:F8:9F:3D:19:77:82:7C:0B:FD:31:79:96:7B:06:6B:AE:30:5B:9D:E6:63:C9:76:74:53:15
Valid until: Saturday, 2 May, 2048
------------
# Android deployed icon location
Icon location: ecommerce_mobile\android\app\src\main\res
Steps: https://aboutreact.com/react-native-change-app-icon/

# Install error “Parse Error : There is a problem parsing the package” while installing Android application
https://stackoverflow.com/questions/1492401/parse-error-there-is-a-problem-parsing-the-package-while-installing-android


14

Instead of shooting in the dark, get the reason for this error by installing it via adb:

adb -s emulator-5555 install ~/path-to-your-apk/com.app.apk

Replace emulator-5555 with your device name. You can obtain a list using:

adb devices

Upon failing, it will give a reason. Common reasons and their fixes:

    INSTALL_PARSE_FAILED_NO_CERTIFICATES: Reference
    INSTALL_FAILED_UPDATE_INCOMPATIBLE: Reference

