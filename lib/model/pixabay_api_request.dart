class PixabayApiRequest {
  PixabayApiRequest({
    required this.key,
    this.q,
    this.lang,
    this.id,
    this.imageType,
    this.orientation,
    this.category,
    this.minWidth,
    this.minHeight,
    this.colors,
    this.editorsChoice,
    this.safesearch,
    this.order,
    this.page,
    this.perPage,
    this.callback,
    this.pretty,
  });

  String key;
  String? q;
  String? lang;
  String? id;
  String? imageType;
  String? orientation;
  String? category;
  int? minWidth;
  int? minHeight;
  String? colors;
  bool? editorsChoice;
  bool? safesearch;
  String? order;
  String? page;
  int? perPage;
  String? callback;
  bool? pretty;
}
