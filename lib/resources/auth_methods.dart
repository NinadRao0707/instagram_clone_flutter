import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/models/user.dart' as model;
import 'package:instagram_clone/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Get user details
  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;
    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();
    return model.User.fromSnap(documentSnapshot);
  }

  // Sign up the user
  Future<String> signUpUser({
    required String email,
    required String fullName,
    required String password,
    required String username,
    required String bio,
    // required int phoneNo,
    required Uint8List file,
  }) async {
    String res = "Some error occurred";
    try {
      if (fullName.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        // Register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        String photoUrl = await StorageMethods().uploadImageToStorage(
          'profilePics',
          file,
          false,
        );

        model.User _user = model.User(
          username: username,
          uid: cred.user!.uid,
          fullName: fullName,
          email: email,
          bio: bio,
          followers: [],
          following: [],
          photoUrl: photoUrl,
        );

        // Add user to our database
        await _firestore.collection('users').doc(cred.user!.uid).set(
              _user.toJson(),
            );
        res = "Success";
      } else {
        res = "Please enter all the details";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Login user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // Log in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "Success";
      } else {
        res = "Please enter all the details";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Signout user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
