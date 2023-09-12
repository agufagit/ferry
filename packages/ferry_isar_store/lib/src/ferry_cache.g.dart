// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ferry_cache.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetFerryCacheCollection on Isar {
  IsarCollection<String, FerryCache> get ferryCaches => this.collection();
}

const FerryCacheSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'FerryCache',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'value',
        type: IsarType.json,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, FerryCache>(
    serialize: serializeFerryCache,
    deserialize: deserializeFerryCache,
    deserializeProperty: deserializeFerryCacheProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeFerryCache(IsarWriter writer, FerryCache object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, isarJsonEncode(object.value));
  return Isar.fastHash(object.id);
}

@isarProtected
FerryCache deserializeFerryCache(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final Map<String, dynamic>? _value;
  {
    final json = isarJsonDecode(IsarCore.readString(reader, 2) ?? 'null');
    if (json is Map<String, dynamic>) {
      _value = json;
    } else {
      _value = null;
    }
  }
  final object = FerryCache(
    _id,
    _value,
  );
  return object;
}

@isarProtected
dynamic deserializeFerryCacheProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final json = isarJsonDecode(IsarCore.readString(reader, 2) ?? 'null');
        if (json is Map<String, dynamic>) {
          return json;
        } else {
          return null;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

extension FerryCacheQueryFilter
    on QueryBuilder<FerryCache, FerryCache, QFilterCondition> {
  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }
}

extension FerryCacheQueryObject
    on QueryBuilder<FerryCache, FerryCache, QFilterCondition> {}

extension FerryCacheQuerySortBy
    on QueryBuilder<FerryCache, FerryCache, QSortBy> {
  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension FerryCacheQuerySortThenBy
    on QueryBuilder<FerryCache, FerryCache, QSortThenBy> {
  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<FerryCache, FerryCache, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension FerryCacheQueryWhereDistinct
    on QueryBuilder<FerryCache, FerryCache, QDistinct> {
  QueryBuilder<FerryCache, FerryCache, QAfterDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension FerryCacheQueryProperty1
    on QueryBuilder<FerryCache, FerryCache, QProperty> {
  QueryBuilder<FerryCache, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FerryCache, Map<String, dynamic>?, QAfterProperty>
      valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension FerryCacheQueryProperty2<R>
    on QueryBuilder<FerryCache, R, QAfterProperty> {
  QueryBuilder<FerryCache, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FerryCache, (R, Map<String, dynamic>?), QAfterProperty>
      valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension FerryCacheQueryProperty3<R1, R2>
    on QueryBuilder<FerryCache, (R1, R2), QAfterProperty> {
  QueryBuilder<FerryCache, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FerryCache, (R1, R2, Map<String, dynamic>?), QOperations>
      valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}
