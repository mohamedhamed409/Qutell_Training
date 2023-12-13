import 'package:equatable/equatable.dart';

import 'name.dart';

class Subcategory extends Equatable {
  final int? id;
  final String? parentId;
  final Name? name;
  final int? courseCount;

  const Subcategory({this.id, this.parentId, this.name, this.courseCount});

  factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
        id: json['id'] as int?,
        parentId: json['parent_id'] as String?,
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        courseCount: json['courseCount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_id': parentId,
        'name': name?.toJson(),
        'courseCount': courseCount,
      };

  @override
  List<Object?> get props => [id, parentId, name, courseCount];
}
