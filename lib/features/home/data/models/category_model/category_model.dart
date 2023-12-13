import 'package:equatable/equatable.dart';

import 'datum.dart';

class CategoryModel extends Equatable {
  final bool? success;
  final List<Datum>? data;
  final int? total;
  final String? message;

  const CategoryModel({this.success, this.data, this.total, this.message});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        success: json['success'] as bool?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        total: json['total'] as int?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'data': data?.map((e) => e.toJson()).toList(),
        'total': total,
        'message': message,
      };

  @override
  List<Object?> get props => [success, data, total, message];
}
