/// Response models for the Crossword Generator API.

/// API Response wrapper.
class CrosswordResponse {
  final String status;
  final dynamic error;
  final CrosswordData? data;

  CrosswordResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CrosswordResponse.fromJson(Map<String, dynamic> json) => CrosswordResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CrosswordData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Crossword Generator API.

class CrosswordData {
  int? size;
  String? difficulty;
  String? theme;
  List<CrosswordDataGridItem>? grid;
  List<CrosswordDataAcrossItem>? across;
  List<CrosswordDataDownItem>? down;
  int? wordCount;
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
  int? number;
  String? clue;
  String? answer;
  int? length;

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
  int? number;
  String? clue;
  String? answer;
  int? length;

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
  int? expires;

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
  int? expires;

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

  CrosswordRequest({
    this.size,
    this.theme,
    this.difficulty,
  });

  Map<String, dynamic> toJson() => {
      if (size != null) 'size': size,
      if (theme != null) 'theme': theme,
      if (difficulty != null) 'difficulty': difficulty,
    };
}
