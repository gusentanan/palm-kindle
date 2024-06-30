import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/presentation/common_ui/book_card_widget.dart';
import 'package:palmkindle/presentation/home/state/home_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomePageCubit>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: BaseColors.bgMuted,
            title: Padding(
              padding: EdgeInsets.only(left: 18.0.sp),
              child: Row(
                children: [
                  Text('Palm',
                      style: BaseTextStyle.displayLarge
                          .copyWith(color: BaseColors.pmaDim)),
                  Text(
                    'Kindle',
                    style: BaseTextStyle.displayLarge,
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 54.0.sp),
                child: const Icon(
                  Icons.search_outlined,
                  color: BaseColors.primaryColor,
                  size: 24,
                ),
              )
            ],
          ),
          body: Container(
            color: BaseColors.bgCanvas,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<HomePageCubit, HomePageState>(
                          builder: (context, state) {
                        return state.failureOrSucceedArticles.fold(
                          () => state.isLoading
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: BaseColors.primaryColor,
                                  ),
                                )
                              : const SizedBox.shrink(),
                          (response) => response.fold(
                            (failure) => failure.when(
                              fromServerSide: (error) => Text(error),
                            ),
                            (books) => Column(
                                children: List.generate(books.length, (index) {
                              final data = books[index];
                              return BookCard(data: data);
                            })),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
