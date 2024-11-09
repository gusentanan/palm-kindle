// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooksModelImpl _$$BooksModelImplFromJson(Map<String, dynamic> json) =>
    _$BooksModelImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BooksModelImplToJson(_$BooksModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => Authors.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bookshelves: (json['bookshelves'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      copyright: json['copyright'] as bool?,
      mediaType: json['mediaType'] as String?,
      formats: json['formats'] == null
          ? null
          : Formats.fromJson(json['formats'] as Map<String, dynamic>),
      downloadCount: (json['downloadCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'subjects': instance.subjects,
      'bookshelves': instance.bookshelves,
      'languages': instance.languages,
      'copyright': instance.copyright,
      'mediaType': instance.mediaType,
      'formats': instance.formats,
      'downloadCount': instance.downloadCount,
    };

_$AuthorsImpl _$$AuthorsImplFromJson(Map<String, dynamic> json) =>
    _$AuthorsImpl(
      name: json['name'] as String?,
      birthYear: (json['birth_year'] as num?)?.toInt(),
      deathYear: (json['death_year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AuthorsImplToJson(_$AuthorsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_year': instance.birthYear,
      'death_year': instance.deathYear,
    };

_$FormatsImpl _$$FormatsImplFromJson(Map<String, dynamic> json) =>
    _$FormatsImpl(
      imageJpeg: json['image/jpeg'] as String?,
      textPlain: json['text/plain; charset=us-ascii'] as String?,
    );

Map<String, dynamic> _$$FormatsImplToJson(_$FormatsImpl instance) =>
    <String, dynamic>{
      'image/jpeg': instance.imageJpeg,
      'text/plain; charset=us-ascii': instance.textPlain,
    };
