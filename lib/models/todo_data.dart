// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class TodoData {
  final String projectName;
  final String projerctData;
  final String region;
  final String part;
  final String language;
  final String team;
  final DateTime date;

  ///데이터
  TodoData({
    required this.projectName,
    required this.projerctData,
    required this.region,
    required this.part,
    required this.language,
    required this.team,
    required this.date,
  });

  TodoData copyWith({
    String? projectName,
    String? projerctData,
    String? region,
    String? part,
    String? language,
    String? team,
    DateTime? date,
  }) {
    return TodoData(
      projectName: projectName ?? this.projectName,
      projerctData: projerctData ?? this.projerctData,
      region: region ?? this.region,
      part: part ?? this.part,
      language: language ?? this.language,
      team: team ?? this.team,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'projerctData': projerctData,
      'region': region,
      'part': part,
      'language': language,
      'team': team,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory TodoData.fromMap(Map<String, dynamic> map) {
    return TodoData(
      projectName: map['projectName'] as String,
      projerctData: map['projerctData'] as String,
      region: map['region'] as String,
      part: map['part'] as String,
      language: map['language'] as String,
      team: map['team'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoData.fromJson(String source) =>
      TodoData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TodoData(projectName: $projectName, projerctData: $projerctData, region: $region, part: $part, language: $language, team: $team, date: $date)';
  }

  @override
  bool operator ==(covariant TodoData other) {
    if (identical(this, other)) return true;

    return other.projectName == projectName &&
        other.projerctData == projerctData &&
        other.region == region &&
        other.part == part &&
        other.language == language &&
        other.team == team &&
        other.date == date;
  }

  @override
  int get hashCode {
    return projectName.hashCode ^
        projerctData.hashCode ^
        region.hashCode ^
        part.hashCode ^
        language.hashCode ^
        team.hashCode ^
        date.hashCode;
  }
}
