import 'package:flutter/material.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:palmkindle/utils/style_utils.dart';

class SearchBarWidget extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final VoidCallback onClearText;
  final VoidCallback onTapBack;

  const SearchBarWidget({
    Key? key,
    required this.onChanged,
    required this.controller,
    required this.onClearText,
    required this.onTapBack,
  }) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: setWidth(16)),
      decoration: BoxDecoration(
        color: BaseColors.bgSubtle,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: BaseColors.dividerMuted),
      ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: widget.controller,
        cursorColor: BaseColors.pmaDim,
        style: BaseTextStyle.displayMedium,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: BaseColors.primaryColor,
            ),
            onPressed: () {
              widget.onTapBack();
            },
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              size: 18,
              color: BaseColors.pmaDim,
            ),
            onPressed: () {
              widget.controller.clear();
              widget.onClearText();
            },
          ),
        ),
      ),
    );
  }
}
