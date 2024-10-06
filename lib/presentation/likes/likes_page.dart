import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/core/routes/palm_routes.gr.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/model/book_detail_model.dart';
import 'package:palmkindle/presentation/common_ui/book_card_widget.dart';
import 'package:palmkindle/presentation/likes/state/likes_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:palmkindle/utils/mapper.dart';

@RoutePage()
class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<StatefulWidget> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  late LikesPageCubit _likesPageCubit;

  @override
  void initState() {
    super.initState();
    _likesPageCubit = getIt<LikesPageCubit>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _likesPageCubit, // Use the initialized cubit
      child: Scaffold(
        backgroundColor: BaseColors.bgCanvas,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: BaseColors.bgMuted,
          title: Text(
            'Likes',
            style: BaseTextStyle.displayLarge,
          ),
        ),
        body: Container(
          color: BaseColors.bgCanvas,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: BlocBuilder<LikesPageCubit, LikesPageState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: BaseColors.primaryColor,
                      ),
                    );
                  } else if (state.likedBooks.isNotEmpty) {
                    return ListView.builder(
                      itemCount: state.likedBooks.length,
                      itemBuilder: (context, index) {
                        final Book book = state.likedBooks[index];
                        final Results data = Mapper().mapBookToResults(book);
                        final BookDetailModel bookDetail =
                            Mapper().mapBookToBookDetailModel(book);
                        return BookCard(
                          data: data,
                          onTap: () async {
                            final result = await context.router
                                .push(DetailRoute(data: bookDetail));
                            if (result == true) {
                              _likesPageCubit.getAllLikedBooks();
                            }
                          },
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        "Your liked books will appear here.",
                        style: BaseTextStyle.displayLarge,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
