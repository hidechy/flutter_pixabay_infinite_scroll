// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/image_list.dart';

part 'search_result_response_state.freezed.dart';

@freezed
class SearchResultResponseState with _$SearchResultResponseState {
  const factory SearchResultResponseState(
    List<ImageList> imageList,
    int hitCount,
  ) = _SearchResultResponseState;
}
