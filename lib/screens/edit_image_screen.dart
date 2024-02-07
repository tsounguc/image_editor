import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor/widget/edit_image_viewmodel.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;
  const EditImageScreen({Key? key, required this.selectedImage})
      : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(
        File(widget.selectedImage),
      ),
      floatingActionButton: _addNewTextFab,
    );
  }

  Widget get _addNewTextFab => FloatingActionButton(
        onPressed: () => addNewDialog(context),
        backgroundColor: Colors.white,
        tooltip: 'Add New Text',
        child: const Icon(Icons.edit, color: Colors.black),
      );
}
