// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/presentation/common_ui/author_chip_widget.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.data, required this.onTap});

  final Results data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: BaseColors.bgCanvas,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: BaseTextStyle.displayMedium
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 12),
                      AuthorChip(
                          authorName: data.authors.isEmpty
                              ? 'No writer'
                              : data.authors.first.name),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                        child: Text(
                          data.authors.isEmpty
                              ? 'No records'
                              : '${data.authors.first.birthYear} \t - \t ${data.authors.first.deathYear}',
                          style: BaseTextStyle.headlineLarge
                              .copyWith(color: BaseColors.neutralColor),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(10),
                  ),
                  child: Image.network(
                    width: 80,
                    height: 120,
                    data.formats?.imageJpeg ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 80,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: BaseColors.bgMuted,
                      ),
                      child: const Icon(
                        Icons.broken_image_outlined,
                        color: BaseColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Divider(
                color: BaseColors.dividerMuted,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
