import 'package:equatable/equatable.dart';

import 'active_subcategory.dart';
import 'child.dart';
import 'description.dart';
import 'name.dart';
import 'subcategory.dart';

class Datum extends Equatable {
  final int? id;
  final Name? name;
  final dynamic title;
  final Description? description;
  final String? image;
  final String? thumbnail;
  final dynamic parentId;
  final String? coursesCount;
  final int? courseCount;
  final List<ActiveSubcategory>? activeSubcategories;
  final List<Child>? childs;
  final List<Subcategory>? subcategories;

  const Datum({
    this.id,
    this.name,
    this.title,
    this.description,
    this.image,
    this.thumbnail,
    this.parentId,
    this.coursesCount,
    this.courseCount,
    this.activeSubcategories,
    this.childs,
    this.subcategories,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] == null
            ? null
            : Name.fromJson(json['name'] as Map<String, dynamic>),
        title: json['title'] as dynamic,
        description: json['description'] == null
            ? null
            : Description.fromJson(json['description'] as Map<String, dynamic>),
        image: json['image'] as String?,
        thumbnail: json['thumbnail'] as String?,
        parentId: json['parent_id'] as dynamic,
        coursesCount: json['courses_count'] as String?,
        courseCount: json['courseCount'] as int?,
        activeSubcategories: (json['active_subcategories'] as List<dynamic>?)
            ?.map((e) => ActiveSubcategory.fromJson(e as Map<String, dynamic>))
            .toList(),
        childs: (json['childs'] as List<dynamic>?)
            ?.map((e) => Child.fromJson(e as Map<String, dynamic>))
            .toList(),
        subcategories: (json['subcategories'] as List<dynamic>?)
            ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name?.toJson(),
        'title': title,
        'description': description?.toJson(),
        'image': image,
        'thumbnail': thumbnail,
        'parent_id': parentId,
        'courses_count': coursesCount,
        'courseCount': courseCount,
        'active_subcategories':
            activeSubcategories?.map((e) => e.toJson()).toList(),
        'childs': childs?.map((e) => e.toJson()).toList(),
        'subcategories': subcategories?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      title,
      description,
      image,
      thumbnail,
      parentId,
      coursesCount,
      courseCount,
      activeSubcategories,
      childs,
      subcategories,
    ];
  }
}
