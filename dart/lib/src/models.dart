/// Response models for the Crossword Generator API.

/// API Response wrapper.
class CrosswordResponse {
  final String status;
  final dynamic error;
  final CrosswordData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CrosswordResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CrosswordResponse.fromJson(Map<String, dynamic> json) => CrosswordResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CrosswordData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Crossword Generator API.

class CrosswordData {
  num? size;
  String? difficulty;
  String? theme;
  List<CrosswordDataGridItem>? grid;
  List<CrosswordDataAcrossItem>? across;
  List<CrosswordDataDownItem>? down;
  num? wordCount;
  String? html;
  CrosswordDataImage? image;
  CrosswordDataSolutionimage? solutionImage;

  CrosswordData({
    this.size,
    this.difficulty,
    this.theme,
    this.grid,
    this.across,
    this.down,
    this.wordCount,
    this.html,
    this.image,
    this.solutionImage,
  });

  factory CrosswordData.fromJson(Map<String, dynamic> json) => CrosswordData(
      size: json['size'],
      difficulty: json['difficulty'],
      theme: json['theme'],
      grid: (json['grid'] as List?)?.map((e) => CrosswordDataGridItem.fromJson(e)).toList(),
      across: (json['across'] as List?)?.map((e) => CrosswordDataAcrossItem.fromJson(e)).toList(),
      down: (json['down'] as List?)?.map((e) => CrosswordDataDownItem.fromJson(e)).toList(),
      wordCount: json['wordCount'],
      html: json['html'],
      image: json['image'] != null ? CrosswordDataImage.fromJson(json['image']) : null,
      solutionImage: json['solutionImage'] != null ? CrosswordDataSolutionimage.fromJson(json['solutionImage']) : null,
    );
}

class CrosswordDataGridItem {
  dynamic 0;
  dynamic 1;
  dynamic 2;
  dynamic 3;
  dynamic 4;
  dynamic 5;
  dynamic 6;
  dynamic 7;
  dynamic 8;
  dynamic 9;
  dynamic 10;
  dynamic 11;
  dynamic 12;
  dynamic 13;
  dynamic 14;

  CrosswordDataGridItem({
    this.0,
    this.1,
    this.2,
    this.3,
    this.4,
    this.5,
    this.6,
    this.7,
    this.8,
    this.9,
    this.10,
    this.11,
    this.12,
    this.13,
    this.14,
  });

  factory CrosswordDataGridItem.fromJson(Map<String, dynamic> json) => CrosswordDataGridItem(
      0: json['0'],
      1: json['1'],
      2: json['2'],
      3: json['3'],
      4: json['4'],
      5: json['5'],
      6: json['6'],
      7: json['7'],
      8: json['8'],
      9: json['9'],
      10: json['10'],
      11: json['11'],
      12: json['12'],
      13: json['13'],
      14: json['14'],
    );
}

class CrosswordDataAcrossItem {
  num? number;
  String? clue;
  String? answer;
  num? length;

  CrosswordDataAcrossItem({
    this.number,
    this.clue,
    this.answer,
    this.length,
  });

  factory CrosswordDataAcrossItem.fromJson(Map<String, dynamic> json) => CrosswordDataAcrossItem(
      number: json['number'],
      clue: json['clue'],
      answer: json['answer'],
      length: json['length'],
    );
}

class CrosswordDataDownItem {
  num? number;
  String? clue;
  String? answer;
  num? length;

  CrosswordDataDownItem({
    this.number,
    this.clue,
    this.answer,
    this.length,
  });

  factory CrosswordDataDownItem.fromJson(Map<String, dynamic> json) => CrosswordDataDownItem(
      number: json['number'],
      clue: json['clue'],
      answer: json['answer'],
      length: json['length'],
    );
}

class CrosswordDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  CrosswordDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory CrosswordDataImage.fromJson(Map<String, dynamic> json) => CrosswordDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class CrosswordDataSolutionimage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  CrosswordDataSolutionimage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory CrosswordDataSolutionimage.fromJson(Map<String, dynamic> json) => CrosswordDataSolutionimage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class CrosswordRequest {
  String? size;
  String? theme;
  String? difficulty;
  bool? image;
  bool? solutionImage;

  CrosswordRequest({
    this.size,
    this.theme,
    this.difficulty,
    this.image,
    this.solutionImage,
  });

  Map<String, dynamic> toJson() => {
      if (size != null) 'size': size,
      if (theme != null) 'theme': theme,
      if (difficulty != null) 'difficulty': difficulty,
      if (image != null) 'image': image,
      if (solutionImage != null) 'solutionImage': solutionImage,
    };
}
