import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Picking up an image from gallery
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file = await _imagePicker.pickImage(source: source);

  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image Selected');
}

// Displaying snackbars
showSnackBar(String content, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
