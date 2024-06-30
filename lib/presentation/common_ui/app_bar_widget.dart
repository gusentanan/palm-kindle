import 'package:flutter/material.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({
    super.key,
    required this.text,
    required this.onTapBackButton,
    required this.withTrailingIcon,
    this.trailingIcon,
    this.onTapTrailingIcon,
  });

  final String text;
  final VoidCallback onTapBackButton;
  final bool withTrailingIcon;
  IconData? trailingIcon = Icons.abc_outlined;
  VoidCallback? onTapTrailingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: BaseColors.bgCanvas,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: BaseColors.pmaDim,
            size: 24,
          ),
          onPressed: () {
            onTapBackButton();
          },
        ),
        title: Text(
          text,
          style: BaseTextStyle.headlineLarge,
        ),
        actions: [
          withTrailingIcon
              ? IconButton(
                  icon: Icon(
                    trailingIcon,
                    color: BaseColors.pmaDim,
                    size: 24,
                  ),
                  onPressed: () {
                    onTapTrailingIcon!();
                  },
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
