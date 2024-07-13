import 'package:flutter/material.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

class AuthorChip extends StatelessWidget {
  const AuthorChip({super.key, required this.authorName});

  final String? authorName;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: BaseColors.dividerMuted,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: [
            const Icon(
              Icons.person,
              color: BaseColors.primaryColor,
              size: 12,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                authorName ?? '',
                overflow: TextOverflow.ellipsis,
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
