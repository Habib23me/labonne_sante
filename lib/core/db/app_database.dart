import 'dart:convert';

import 'package:drift/drift.dart';
import 'connection/native.dart' if (dart.library.html) 'connection/web.dart';

part 'app_database.g.dart';

class ListConverter extends TypeConverter<List<String>, String> {
  const ListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return (json.decode(fromDb) as List).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}

@DataClassName('Product')
class Products extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  RealColumn get price => real()();
  TextColumn get brand => text()();
  TextColumn get benefits => text()();
  TextColumn get howToUse => text()();
  TextColumn get ingredients => text()();
  IntColumn get rating => integer()();
  IntColumn get reviewsCount => integer()();
  TextColumn get categories => text().map(const ListConverter())();
  TextColumn get media => text().map(const ListConverter())();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(constructDb());

  @override
  int get schemaVersion => 1;

  Future<void> insertProducts(List<Product> products) async {
    await batch((batch) {
      batch.insertAll(this.products, products, mode: InsertMode.insertOrReplace);
    });
  }

  Future<List<Product>> get allProducts => select(products).get();
}
