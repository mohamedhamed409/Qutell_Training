import 'package:equatable/equatable.dart';

class Name extends Equatable {
  final String? en;
  final String? ar;

  const Name({this.en, this.ar});

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        en: json['en'] as String?,
        ar: json['ar'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'en': en,
        'ar': ar,
      };

  @override
  List<Object?> get props => [en, ar];
}
