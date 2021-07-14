/*---------------------------------------------------------------------------------------------
*  Copyright (c) nt4f04und. All rights reserved.
*  Licensed under the BSD-style license. See LICENSE in the project root for license information.
*--------------------------------------------------------------------------------------------*/

import 'package:audio_service/audio_service.dart';
import 'package:sweyer/sweyer.dart';
class Genre extends Content {
  @override
  final int id;
  final String name;
  final List<int> songIds;

  @override
  String get title => name;

  @override
  List<Object> get props => [id];

  const Genre({
    required this.id,
    required this.name,
    required this.songIds,
  });

  @override
  GenreCopyWith get copyWith => _GenreCopyWith(this);

  factory Genre.fromMap(Map map) {
    return Genre(
      id: map['id'] as int,
      name: map['name'] as String,
      songIds: map['songIds'].cast<int>(),
    );
  }

  @override
  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'songIds': songIds,
  };

  @override
  MediaItem toMediaItem() {
    throw UnimplementedError();
  }
}

/// The `copyWith` function type for [Genre].
abstract class GenreCopyWith {
  Genre call({
    int id,
    String name,
    List<int> songIds,
  });
}

/// The implementation of [Genre]'s `copyWith` function allowing
/// parameters to be explicitly set to null.
class _GenreCopyWith extends GenreCopyWith {
  static const _undefined = Object();

  /// The object this function applies to.
  final Genre value;

  _GenreCopyWith(this.value);

  @override
  Genre call({
    Object id = _undefined,
    Object name = _undefined,
    Object songIds = _undefined,
  }) {
    return Genre(
      id: id == _undefined ? value.id : id as int,
      name: name == _undefined ? value.name : name as String,
      songIds: songIds == _undefined ? value.songIds : songIds as List<int>,
    );
  }
}
