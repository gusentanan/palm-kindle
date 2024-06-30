import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/domain/model/book_detail_model.dart';
import 'package:palmkindle/presentation/common_ui/app_bar_widget.dart';
import 'package:palmkindle/presentation/common_ui/author_chip_widget.dart';
import 'package:palmkindle/presentation/common_ui/subject_chip_widget.dart';
import 'package:palmkindle/presentation/detail/state/detail_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.data}) : super(key: key);

  final BookDetailModel data;

  @override
  State<StatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailPageCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<DetailPageCubit>();
    _cubit.init(widget.data.textPlain!);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: Scaffold(
        backgroundColor: BaseColors.bgCanvas,
        appBar: AppBarWidget(
          text: '',
          onTapBackButton: () {
            context.router.maybePop();
          },
          withTrailingIcon: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: BaseColors.bgCanvas,
            padding: EdgeInsets.all(48.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data.title!,
                            style: BaseTextStyle.displayLarge
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          // Adjust as needed based on your project structure
                          AuthorChip(authorName: widget.data.authors!),
                          Text(
                            '${widget.data.birthYear} - ${widget.data.deathYear}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                        bottom: Radius.circular(10),
                      ),
                      child: Image.network(
                        widget.data.imgJpeg!,
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/empty.jpg',
                          width: 80,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(
                  color: BaseColors.dividerMuted,
                  height: 1,
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 2.0,
                  children: widget.data.subjects!.take(4).map((item) {
                    return SubjectChip(
                      subjectName: item,
                    );
                  }).toList(),
                ),
                const SizedBox(height: 8),
                Divider(
                  color: BaseColors.dividerMuted,
                  height: 1,
                ),
                const SizedBox(height: 8),
                BlocBuilder<DetailPageCubit, DetailPageState>(
                  builder: (context, state) {
                    return state.failureOrSucceedArticles.fold(
                      () => state.isLoading
                          ? Center(
                              child: Padding(
                                padding: EdgeInsets.all(40.0.sp),
                                child: Column(
                                  children: [
                                    const CircularProgressIndicator(
                                      color: BaseColors.primaryColor,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'We are fetching the books for you. It might take a while, so please wait.',
                                      textAlign: TextAlign.center,
                                      style: BaseTextStyle.displayMedium
                                          .copyWith(
                                              color: BaseColors.neutralColor),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                      (response) => response.fold(
                        (failure) => Center(
                          child: Text(
                            failure.toString(),
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                        (text) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            text,
                            style: BaseTextStyle.displayMedium.copyWith(
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 48), // Adjust spacing as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
