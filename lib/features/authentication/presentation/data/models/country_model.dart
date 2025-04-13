import 'package:equatable/equatable.dart';

class CountryModel extends Equatable {
  final String name;
  final String code;
  final String url;

  const CountryModel({
    required this.name,
    required this.code,
    required this.url,
  });

  @override
  List<Object?> get props => [name, code, url];

  CountryModel.fromJson(Map<String, dynamic> json)
    : name = json['Name'] as String,
      code = json['DialingCode'] as String,
      url = json['Flag'] as String;
}
