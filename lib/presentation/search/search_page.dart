import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/core/routes/palm_routes.gr.dart';
import 'package:palmkindle/presentation/common_ui/book_card_widget.dart';
import 'package:palmkindle/presentation/common_ui/search_bar_widget.dart';
import 'package:palmkindle/presentation/search/state/search_page_cubit.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/utils/mapper.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();
  late SearchPageCubit _cubit;

  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<SearchPageCubit>();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isNotEmpty) {
        _cubit.searchBooks(query);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _cubit,
        child: Builder(builder: (context) {
          return Scaffold(
            backgroundColor: BaseColors.bgCanvas,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(92),
              child: Container(
                color: BaseColors.bgMuted,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 10, top: 16),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: BaseColors.bgMuted, // Customize as needed
                    elevation: 0, // Optional: remove elevation
                    title: Column(
                      children: [
                        SearchBarWidget(
                          controller: searchController,
                          onChanged: _onSearchChanged,
                          onClearText: () {
                            searchController.clear();
                            context.read<SearchPageCubit>().searchBooks('');
                          },
                          onTapBack: () {
                            context.router.maybePop();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Container(
              color: BaseColors.bgCanvas,
              child: Center(
                child: BlocBuilder<SearchPageCubit, SearchPageState>(
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
                                itemCount: books.length,
                                itemBuilder: (context, index) {
                                  final data = books[index];
                                  final bookDetail = Mapper()
                                      .mapResultsToBookDetailModel(data);
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
        }));
  }
}
