# Instagram Clone ✨ 

> A working Instagram clone written in Flutter using Firebase / Firestore !!

## Features 📋
⚡️Photo feed based on who you follow (using firebase cloud functions)\
⚡️Post photo posts from camera or gallery\
⚡️Like, Comment and View all comments on a post\
⚡️Search for users\
⚡️Profile Pages\
⚡️Follow / Unfollow Users\
⚡️Add your own bio\
⚡️Activity Feed showing recent likes / comments of your posts + new followers\

## Screenshots
<p>
  <img src="https://user-images.githubusercontent.com/67018142/155892044-5c9ff251-0096-46c8-9286-9b5e5b122257.png" alt="login page" width="250">
  <img src="https://user-images.githubusercontent.com/67018142/155892014-0b0a63b1-ecfb-4fb7-9ad6-d60b48e68769.png" alt="feed page" width="250">
  <img src="https://user-images.githubusercontent.com/67018142/155891458-978a1dd7-338b-4ecd-81fd-a9e47e2dbe2e.png" alt="comments page" width="250">
  <img src="https://user-images.githubusercontent.com/67018142/155891511-f4d7e401-5c47-4faf-b55f-361d293b38a7.png" alt="photos page" width="250">
</p>

## Dependencies

* [Flutter](https://flutter.dev/)
* [Cloud Firestore](https://pub.dev/packages/cloud_firestore)
* [Cupertino Icons](https://pub.dev/packages/cupertino_icons)
* [Firebase Auth](https://pub.dev/packages/firebase_auth)
* [Firebase Core](https://pub.dev/packages/firebase_core)
* [Firebase Storage](https://pub.dev/packages/firebase_storage)
* [Flutter Staggered Grid View](https://pub.dev/packages/flutter_staggered_grid_view)
* [Flutter SVG](https://pub.dev/packages/flutter_svg)
* [Font Awesome](https://pub.dev/packages/font_awesome_flutter)
* [Image Picker](https://pub.dev/packages/image_picker)
* [INTL](https://pub.dev/packages/intl)
* [Provider](https://pub.dev/packages/provider)
* [UUID](https://pub.dev/packages/uuid)

## Sections

✔️ Login Screen
✔️ Feed Screen
✔️ Posts Screen
✔️ Activity Feed Screen
✔️ Profile Screen
✔️ View all Comments Screen

## Getting started

#### 1. [Setup Flutter](https://flutter.dev/docs/get-started/install)

#### 2. Clone the repo

```sh
$ git clone https://github.com/NinadRao0707/instagram_clone_flutter.git
$ cd instagram-clone-flutter/
```

#### 3. Setup the firebase app

1. You'll need to create a Firebase instance. Follow the instructions at https://console.firebase.google.com.

3. Once your Firebase instance is created, you'll need to enable Google authentication.

* Go to the Firebase Console for your new instance.
* Click "Authentication" in the left-hand menu
* Click the "sign-in method" tab
* Click "Email/Password" and enable it

4. Enable the Firebase Database
* Go to the Firebase Console
* Click "Database" in the left-hand menu
* Click the Cloudstore "Create Database" button
* Select "Start in test mode" and "Enable"

5. (Skip if not running on Android)

* Create an app within your Firebase instance for Android, with package name com.company.appname
* (Skip if not deploying the app) Run the following command to get your SHA-1 key:

```
keytool -exportcert -list -v \
-alias androiddebugkey -keystore ~/.android/debug.keystore
```

* In the Firebase console, in the settings of your Android app, add your SHA-1 key by clicking "Add Fingerprint".
* Follow instructions to download google-services.json
* Place `google-services.json` into `/android/app/`.

6. (Skip if not running on iOS)

* Create an app within your Firebase instance for iOS, with your app package name
* Follow instructions to download GoogleService-Info.plist
* Open XCode, right click the Runner folder, select the "Add Files to 'Runner'" menu, and select the GoogleService-Info.plist file to add it to /ios/Runner in XCode
* Open /ios/Runner/Info.plist in a text editor. Locate the CFBundleURLSchemes key. The second item in the array value of this key is specific to the Firebase instance. Replace it with the value for REVERSED_CLIENT_ID from GoogleService-Info.plist

## Show your support

Give a ⭐️ if this project helped you!

👤 **Ninad Rao**

-   Twitter: [@nindiya_0707](https://twitter.com/nindiya_0707)
-   Github: [@NinadRao0707](https://github.com/NinadRao0707)
-   LinkedIn: [@NinadRao](https://www.linkedin.com/in/ninad-rao-04765b28/)
