import 'package:flutter/material.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

class SubjectChip extends StatelessWidget {
  const SubjectChip({super.key, required this.subjectName});

  final String subjectName;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: BaseColors.neutralColor, // Border color
            width: 1.0, // Border width
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: [
            Text(
              '#',
              style: BaseTextStyle.headlineLarge
                  .copyWith(color: BaseColors.pmaDim),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                subjectName,
                style:
                    BaseTextStyle.headlineLarge.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
