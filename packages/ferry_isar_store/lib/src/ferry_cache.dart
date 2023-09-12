import 'package:isar/isar.dart';

part 'ferry_cache.g.dart';

@collection
class FerryCache {
  FerryCache(
    this.id,
    this.value,
  );

  @Id()
  String id;
  Map<String, dynamic>? value;
}
