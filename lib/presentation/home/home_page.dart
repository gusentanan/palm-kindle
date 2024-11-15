import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/core/routes/palm_routes.gr.dart';
import 'package:palmkindle/presentation/common_ui/book_card_widget.dart';
import 'package:palmkindle/presentation/home/state/home_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palmkindle/utils/mapper.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  final _cubit = getIt<HomePageCubit>();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 &&
        !_cubit.state.isLoading) {
      // Fetch next page when reaching the end of the list
      print('trigger pagination');
      _cubit.loadNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: BaseColors.bgMuted,
            title: Padding(
              padding: EdgeInsets.only(left: 18.0.sp),
              child: Row(
                children: [
                  Text(
                    'Palm',
                    style: BaseTextStyle.displayLarge
                        .copyWith(color: BaseColors.pmaDim),
                  ),
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
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).push(const SearchRoute());
                  },
                  child: const Icon(
                    Icons.search_outlined,
                    color: BaseColors.primaryColor,
                    size: 24,
                  ),
                ),
              )
            ],
          ),
          body: Container(
            color: BaseColors.bgCanvas,
            child: Center(
              child: BlocBuilder<HomePageCubit, HomePageState>(
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
                      (failure) => Center(
                        child: Text(failure.toString()), // Show error message
                      ),
                      (books) => Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              controller: _scrollController,
                              itemCount: state.books.length +
                                  (state.isLoading ? 1 : 0),
                              itemBuilder: (context, index) {
                                if (index == state.books.length) {
                                  return const Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Center(
                                      child: CircularProgressIndicator(
                                          color: BaseColors.primaryColor),
                                    ),
                                  );
                                }

                                final data = state.books[index];
                                final bookDetail =
                                    Mapper().mapResultsToBookDetailModel(data);

                                return BookCard(
                                  data: data,
                                  onTap: () {
                                    AutoRouter.of(context)
                                        .push(DetailRoute(data: bookDetail));
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
