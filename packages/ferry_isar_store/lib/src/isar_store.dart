import 'dart:async';
import 'package:isar/isar.dart';
import 'package:ferry_store/ferry_store.dart';

import 'ferry_cache.dart';

class IsarStore extends Store {
  final Isar isar;
  final JsonEquals _jsonEquals;

  IsarStore(this.isar, [JsonEquals? jsonEquals]) : _jsonEquals = jsonEquals ?? jsonMapEquals;

  @override
  Iterable<String> get keys => isar.ferryCaches.where().idProperty().findAll();

  @override
  Stream<Map<String, dynamic>?> watch(String dataId, {bool distinct = true}) {
    final stream = isar.ferryCaches
        .where()
        .idEqualTo(dataId)
        .valueProperty()
        .build()
        .watch(fireImmediately: true)
        .map<Map<String, dynamic>?>((event) => event.isEmpty ? null : event.first);

    if (distinct) {
      return stream.distinct(_jsonEquals);
    }

    return stream;
  }

  @override
  Map<String, dynamic>? get(String dataId) => isar.ferryCaches.get(dataId)?.value;

  @override
  void put(String dataId, Map<String, dynamic>? value) => isar.write((isar) => isar.ferryCaches.put(FerryCache(dataId, value)));

  @override
  void putAll(Map<String, Map<String, dynamic>?> data) {
    var ferryCaches = <FerryCache>[];
    data.forEach((key, value) => ferryCaches.add(FerryCache(key, value)));
    isar.write((isar) => isar.ferryCaches.putAll(ferryCaches));
  }

  @override
  void delete(String dataId) => isar.write((isar) => isar.ferryCaches.delete(dataId));

  @override
  void deleteAll(Iterable<String> dataIds) => isar.write((isar) => isar.ferryCaches.deleteAll(dataIds.toList()));

  @override
  void clear() => isar.write((isar) => isar.ferryCaches.where().deleteAll());

  @override
  Future<void> dispose() => Future.value();
}
