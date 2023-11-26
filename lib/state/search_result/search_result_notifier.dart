import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/service/search_result_service.dart';
import '../../model/image_list.dart';
import 'search_result_response_state.dart';

final searchQeuryProvider = StateProvider<String>((ref) => '');

final pageProvider = StateProvider<int>((ref) => 1);

//===========================//

final searchResultProvider = AsyncNotifierProvider<SearchResultNotifier, SearchResultResponseState>(() {
  return SearchResultNotifier();
});

class SearchResultNotifier extends AsyncNotifier<SearchResultResponseState> {
  ///
  final SearchResultService _searchResultService = SearchResultService();

  ///
  @override
  Future<SearchResultResponseState> build() async => _fetchInitial();

  ///
  Future<SearchResultResponseState> _fetchInitial() async {
    final searchQuery = ref.watch(searchQeuryProvider);
    final searchResult = await _searchResultService.getSearchResultList(searchQuery, 1);
    return searchResult;
  }

  ///
  Future<void> addImageList() {
    return update((previousSearchResult) async {
      final searchQuery = ref.watch(searchQeuryProvider);
      final page = ref.read(pageProvider);

      final newImageList = <ImageList>[];

      // ignore: prefer_foreach
      for (final image in previousSearchResult.imageList) {
        newImageList.add(image);
      }

      final searchResult = await _searchResultService.getSearchResultList(searchQuery, page);

      // ignore: prefer_foreach
      for (final image in searchResult.imageList) {
        newImageList.add(image);
      }

      return SearchResultResponseState(newImageList, previousSearchResult.hitCount);
    });
  }
}

//===========================//
