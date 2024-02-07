import 'package:flutter/material.dart';
import 'package:image_editor/screens/edit_image_screen.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  TextEditingController controller = TextEditingController();
  addNewDialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New Text'),
        content: TextField(
          controller: controller, 
          maxLines: 5,
          decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.edit,
            ),
            filled: true,
            hintText: 'Your Text Here...',
          ),
        ),
      ),
    );
  }
}
