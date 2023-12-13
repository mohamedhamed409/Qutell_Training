import 'package:equatable/equatable.dart';

import 'description.dart';
import 'name.dart';

class Child extends Equatable {
  final int? id;
  final Name? name;
  final String? status;
  final dynamic title;
  final Description? description;
  final dynamic url;
  final String? showHome;
  final String? positionOrder;
  final String? image;
  final String? thumbnail;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? lmsId;
  final String? parentId;
  final int? courseCount;
  final List<dynamic>? childs;

  const Child({
    this.id,
    this.name,
    this.status,
    this.title,
    this.description,
    this.url,
    this.showHome,
    this.positionOrder,
    this.image,
    this.thumbnail,
    this.createdAt,
    this.updatedAt,
    this.lmsId,
    this.parentId,
    this.courseCount,
    this.childs,
  });

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        id: json['id'] as int?,
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        status: json['status'] as String?,
        title: json['title'] as dynamic,
        description: json['description'] == null
            ? null
            : Description.fromJson(json['description'] as Map<String, dynamic>),
        url: json['url'] as dynamic,
        showHome: json['show_home'] as String?,
        positionOrder: json['position_order'] as String?,
        image: json['image'] as String?,
        thumbnail: json['thumbnail'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        lmsId: json['lms_id'] as String?,
        parentId: json['parent_id'] as String?,
        courseCount: json['courseCount'] as int?,
        childs: json['childs'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name?.toJson(),
        'status': status,
        'title': title,
        'description': description?.toJson(),
        'url': url,
        'show_home': showHome,
        'position_order': positionOrder,
        'image': image,
        'thumbnail': thumbnail,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'lms_id': lmsId,
        'parent_id': parentId,
        'courseCount': courseCount,
        'childs': childs,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      status,
      title,
      description,
      url,
      showHome,
      positionOrder,
      image,
      thumbnail,
      createdAt,
      updatedAt,
      lmsId,
      parentId,
      courseCount,
      childs,
    ];
  }
}
