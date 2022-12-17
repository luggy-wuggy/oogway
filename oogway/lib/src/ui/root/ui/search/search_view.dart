import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/charity_card.dart';
import 'package:oogway/src/ui/root/ui/search/controller/search_charity_controller.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  late final TextEditingController searchTextEditingController;
  bool isClearIconShowing = false;

  @override
  void initState() {
    super.initState();
    searchTextEditingController = TextEditingController();

    searchTextEditingController.addListener(() {
      if (searchTextEditingController.text.isEmpty) {
        setState(() {
          isClearIconShowing = false;
        });
      } else {
        setState(() {
          isClearIconShowing = true;
        });
      }
    });
  }

  @override
  void dispose() {
    searchTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final charitySuggestion = ref.watch(charitySearchProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: OogwayColors.kPrimaryLightColor,
              ),
              Expanded(
                child: TextField(
                  controller: searchTextEditingController,
                  onChanged: (value) {
                    ref
                        .read(charitySearchProvider)
                        .getCharitySuggestions(charity: value);
                  },
                  decoration: InputDecoration(
                    hintText: "search charity name",
                    hintStyle: TextStyle(
                      color: OogwayColors.kPrimaryLightColor.withOpacity(0.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                  ),
                  cursorColor: OogwayColors.kPrimaryLightColor,
                  style: const TextStyle(
                    color: OogwayColors.kPrimaryLightColor,
                  ),
                ),
              ),
              isClearIconShowing
                  ? GestureDetector(
                      onTap: () {
                        searchTextEditingController.clear();
                        ref
                            .read(charitySearchProvider)
                            .clearCharitySuggestions();
                      },
                      child: const Icon(
                        Icons.close,
                        color: OogwayColors.kPrimaryLightColor,
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: charitySuggestion.suggestion.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CharityCard(
                    charity: charitySuggestion.suggestion[index],
                  ),
                  const SizedBox(height: 20),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
