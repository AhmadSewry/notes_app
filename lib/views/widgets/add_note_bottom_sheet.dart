import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: "Title"),
            SizedBox(height: 16),
            CustomTextField(hintText: "Content", maxLines: 5),
            SizedBox(height: 16),
            CustomButton(
              backgroundColor: kPrimaryColor,
              text: "Add",
              width: MediaQuery.of(context).size.width,
              height: 55,
              textColor: Colors.black,
              textSize: 20,
            ),
            SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
