import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:palmkindle/themes/base_text_style.dart';

MarkdownStyleSheet customMarkdownTheme() {
  return MarkdownStyleSheet(
    // Links (a tags)
    a: BaseTextStyle.displayMedium.copyWith(
      color: Colors.blue,
      decoration: TextDecoration.underline,
    ),

    // Paragraph (p tags)
    p: BaseTextStyle.displayMedium,
    pPadding: const EdgeInsets.symmetric(vertical: 8.0),

    // Code block styling
    code: BaseTextStyle.displaySmall.copyWith(
      fontFamily: 'monospace',
    ),

    // Headings
    h1: BaseTextStyle.displayLarge.copyWith(fontWeight: FontWeight.bold),
    h1Padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),

    h2: BaseTextStyle.displayMedium.copyWith(fontWeight: FontWeight.bold),
    h2Padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 4.0),

    h3: BaseTextStyle.displaySmall.copyWith(fontWeight: FontWeight.bold),
    h3Padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),

    h4: BaseTextStyle.headlineLarge.copyWith(fontWeight: FontWeight.bold),
    h4Padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 4.0),

    h5: BaseTextStyle.headlineMedium.copyWith(fontWeight: FontWeight.bold),
    h5Padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),

    h6: BaseTextStyle.headlineSmall.copyWith(fontWeight: FontWeight.bold),
    h6Padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),

    // Italic text
    em: BaseTextStyle.displaySmall.copyWith(
      fontStyle: FontStyle.italic,
    ),

    // Bold text
    strong: BaseTextStyle.displaySmall.copyWith(
      fontWeight: FontWeight.bold,
    ),
  );
}
