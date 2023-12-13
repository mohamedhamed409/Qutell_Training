import 'package:equatable/equatable.dart';

class Description extends Equatable {
  final String? en;
  final String? ar;

  const Description({this.en, this.ar});

  factory Description.fromJson(Map<String, dynamic> json) => Description(
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
