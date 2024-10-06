// ignore_for_file: use_build_context_synchronously
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/domain/model/book_detail_model.dart';
import 'package:palmkindle/presentation/common_ui/author_chip_widget.dart';
import 'package:palmkindle/presentation/common_ui/subject_chip_widget.dart';
import 'package:palmkindle/presentation/detail/state/detail_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:palmkindle/utils/helper/markdown_style.dart';

@RoutePage()
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.data}) : super(key: key);

  final BookDetailModel data;

  @override
  State<StatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailPageCubit _cubit;
  int currentMaxChunks = 10;
  bool isLoadingMore = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _cubit = getIt<DetailPageCubit>();
    _cubit.init(widget.data.textPlain!, widget.data.title!);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Check if user scrolled to the end of the content
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !isLoadingMore) {
      setState(() {
        isLoadingMore = true;
      });

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          currentMaxChunks += 10;
          isLoadingMore = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: Scaffold(
        backgroundColor: BaseColors.bgCanvas,
        appBar: AppBar(
          backgroundColor: BaseColors.bgMuted,
          title: const Text(''),
          leading: Padding(
            padding: EdgeInsets.only(left: 32.0.w),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: BaseColors.primaryColor,
              ),
              onPressed: () {
                context.router.maybePop();
              },
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 32.0.w),
              child: IconButton(
                icon: Icon(
                  _cubit.state.isStoredLocally
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  color: BaseColors.primaryColor,
                ),
                onPressed: () async {
                  if (_cubit.state.isStoredLocally) {
                    try {
                      await _cubit.deleteFromDatabase(widget.data.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            backgroundColor: BaseColors.greenColor,
                            content: Text('Book removed from favorites')),
                      );
                      setState(() {});
                    } catch (e) {
                      if (kDebugMode) {
                        print('Failed to delete a book: $e');
                      }
                    }
                  } else {
                    final book = Book(
                      title: widget.data.title!,
                      author: widget.data.authors!,
                      birthYear: widget.data.birthYear!,
                      deathYear: widget.data.deathYear!,
                      imageUrl: widget.data.imgJpeg!,
                      subjects: widget.data.subjects!,
                      textUrl: widget.data.textPlain!,
                    );
                    try {
                      await _cubit.addToDatabase(book);
                      _cubit.checkIfStoredLocally(widget.data.title!);

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            backgroundColor: BaseColors.greenColor,
                            content: Text('Book added to favorites')),
                      );
                      setState(() {});
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Failed to add book')),
                      );
                      if (kDebugMode) {
                        print('Failed to add book: $e');
                      }
                    }
                  }
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
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
                          AuthorChip(authorName: widget.data.authors),
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
                        widget.data.imgJpeg ?? '',
                        width: 120,
                        height: 180,
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
                    bool isLoadingMore = false;
                    return state.failureOrSucceedArticles.fold(
                      () => state.isLoading
                          ? Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 280.0.h, horizontal: 20.0.w),
                              child: Column(
                                children: [
                                  const CircularProgressIndicator(
                                    color: BaseColors.primaryColor,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'We are fetching the books for you. It might take a while, so please wait 😉',
                                    textAlign: TextAlign.center,
                                    style: BaseTextStyle.displayMedium.copyWith(
                                        color: BaseColors.neutralColor),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                      (response) => response.fold(
                          (failure) => Center(
                                child: Text(
                                  failure.toString(),
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ), (text) {
                        final totalChunks = text.length;
                        final visibleText =
                            text.take(currentMaxChunks).toList();

                        return Column(
                          children: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: visibleText.length,
                              itemBuilder: (context, index) {
                                return Markdown(
                                  controller:
                                      ScrollController(keepScrollOffset: false),
                                  shrinkWrap: true,
                                  data: text[index],
                                  styleSheet: customMarkdownTheme(),
                                );
                              },
                            ),
                            if (!isLoadingMore &&
                                currentMaxChunks < totalChunks)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'Scroll to load more...',
                                  style: BaseTextStyle.displayLarge.copyWith(
                                    color: BaseColors.pmaDim,
                                  ),
                                ),
                              ),
                          ],
                        );
                      }),
                    );
                  },
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
