import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

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
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: BaseColors.bgMuted,
      leading: Padding(
        padding: EdgeInsets.only(left: 18.0.sp),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: BaseColors.pmaDim,
            size: 24,
          ),
          onPressed: () {
            onTapBackButton();
          },
        ),
      ),
      title: Text(
        text,
        style: BaseTextStyle.headlineLarge,
      ),
      actions: [
        withTrailingIcon
            ? Padding(
                padding: EdgeInsets.only(right: 40.0.sp),
                child: IconButton(
                  icon: Icon(
                    trailingIcon,
                    color: BaseColors.pmaDim,
                    size: 24,
                  ),
                  onPressed: () {
                    onTapTrailingIcon!();
                  },
                ),
              )
            : const SizedBox.shrink()
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.sp),
        child: Divider(
          height: 1.0,
          color: BaseColors.dividerMuted,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(158.sp);
}
