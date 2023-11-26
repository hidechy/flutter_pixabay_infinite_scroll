// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:flutter/material.dart';

import '../../data/api.dart';
import '../../model/hit.dart';
import '../../model/pixabay_api_request.dart';
import '../../model/pixabay_api_response.dart';

class PixabayRepository extends Api {
  final String _pathName = '/api/';
  PixabayApiRequest pixabayApiInitialRequest = PixabayApiRequest(key: '22411457-7d1d2b683baff994d373da9ed', lang: 'ja');

  ///
  Future<PixabayApiResponse> getPixabay(PixabayApiRequest pixabayApiRequest) async {
    final queryParameters = makeQueryParameterMap(pixabayApiRequest);

    final response = await pixabayApi(_pathName, queryParameters);

    // ignore: non_constant_identifier_names
    var JsonResponse = <String, dynamic>{};

    if (response.statusCode == 200) {
      JsonResponse = jsonDecode(response.body);
    } else {
      debugPrint('API通信でエラーが発生しました');
    }

    final hitsList = responseTransform(JsonResponse['hits']);

    return PixabayApiResponse(
      total: JsonResponse['total'],
      totalHits: JsonResponse['totalHits'],
      hits: hitsList,
    );
  }

  ///
  Map<String, dynamic> makeQueryParameterMap(PixabayApiRequest pixabayApiRequest) {
    return {
      'key': pixabayApiRequest.key,
      'q': pixabayApiRequest.q ?? '',
      'lang': pixabayApiRequest.lang ?? '',
      'id': pixabayApiRequest.id ?? '',
      'image_type': pixabayApiRequest.imageType ?? '',
      'orientation': pixabayApiRequest.orientation ?? '',
      'category': pixabayApiRequest.category ?? '',
      'min_width': pixabayApiRequest.minWidth ?? '',
      'colors': pixabayApiRequest.colors ?? '',
      'editors_choice': pixabayApiRequest.editorsChoice ?? '',
      'safesearch': pixabayApiRequest.safesearch ?? '',
      'order': pixabayApiRequest.order ?? '',
      'page': pixabayApiRequest.page ?? '',
      'per_page': pixabayApiRequest.perPage ?? '',
      'callback': pixabayApiRequest.callback ?? '',
      'pretty': pixabayApiRequest.pretty ?? '',
    };
  }

  ///
  List<Hit> responseTransform(List<dynamic> responseHits) {
    final hitsList = <Hit>[];

    for (final element in responseHits) {
      final hit = Hit(
          id: element['id'],
          pageURL: element['pageURL'],
          type: element['type'],
          tags: element['tags'],
          previewURL: element['previewURL'],
          previewWidth: element['previewWidth'],
          previewHeight: element['previewHeight'],
          webformatURL: element['webformatURL'],
          webformatWidth: element['webformatWidth'],
          webformatHeight: element['webformatHeight'],
          largeImageURL: element['largeImageURL'],
          imageWidth: element['imageWidth'],
          imageHeight: element['imageHeight'],
          imageSize: element['imageSize'],
          views: element['views'],
          downloads: element['downloads'],
          collections: element['collections'],
          likes: element['likes'],
          comments: element['comments'],
          userId: element['user_id'],
          user: element['user'],
          userImageURL: element['userImageURL']);
      hitsList.add(hit);
    }

    return hitsList;
  }
}
