import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palmkindle/presentation/common_ui/search_bar_widget.dart';
import 'package:palmkindle/themes/base_colors.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.bgCanvas,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92),
        child: Container(
          color: BaseColors.bgMuted,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 16),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: BaseColors.bgMuted, // Customize as needed
              elevation: 0, // Optional: remove elevation
              title: Column(
                children: [
                  SearchBarWidget(
                    controller: searchController,
                    onChanged: (value) {},
                    onClearText: () {},
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
    );
  }
}
