// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _benefitsMeta = const VerificationMeta(
    'benefits',
  );
  @override
  late final GeneratedColumn<String> benefits = GeneratedColumn<String>(
    'benefits',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _howToUseMeta = const VerificationMeta(
    'howToUse',
  );
  @override
  late final GeneratedColumn<String> howToUse = GeneratedColumn<String>(
    'how_to_use',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ingredientsMeta = const VerificationMeta(
    'ingredients',
  );
  @override
  late final GeneratedColumn<String> ingredients = GeneratedColumn<String>(
    'ingredients',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
    'rating',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reviewsCountMeta = const VerificationMeta(
    'reviewsCount',
  );
  @override
  late final GeneratedColumn<int> reviewsCount = GeneratedColumn<int>(
    'reviews_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> categories =
      GeneratedColumn<String>(
        'categories',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$convertercategories);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> media =
      GeneratedColumn<String>(
        'media',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductsTable.$convertermedia);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    price,
    brand,
    benefits,
    howToUse,
    ingredients,
    rating,
    reviewsCount,
    categories,
    media,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('benefits')) {
      context.handle(
        _benefitsMeta,
        benefits.isAcceptableOrUnknown(data['benefits']!, _benefitsMeta),
      );
    } else if (isInserting) {
      context.missing(_benefitsMeta);
    }
    if (data.containsKey('how_to_use')) {
      context.handle(
        _howToUseMeta,
        howToUse.isAcceptableOrUnknown(data['how_to_use']!, _howToUseMeta),
      );
    } else if (isInserting) {
      context.missing(_howToUseMeta);
    }
    if (data.containsKey('ingredients')) {
      context.handle(
        _ingredientsMeta,
        ingredients.isAcceptableOrUnknown(
          data['ingredients']!,
          _ingredientsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ingredientsMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('reviews_count')) {
      context.handle(
        _reviewsCountMeta,
        reviewsCount.isAcceptableOrUnknown(
          data['reviews_count']!,
          _reviewsCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_reviewsCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      benefits: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}benefits'],
      )!,
      howToUse: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}how_to_use'],
      )!,
      ingredients: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredients'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rating'],
      )!,
      reviewsCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reviews_count'],
      )!,
      categories: $ProductsTable.$convertercategories.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}categories'],
        )!,
      ),
      media: $ProductsTable.$convertermedia.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}media'],
        )!,
      ),
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $convertercategories =
      const ListConverter();
  static TypeConverter<List<String>, String> $convertermedia =
      const ListConverter();
}

class Product extends DataClass implements Insertable<Product> {
  final String id;
  final String name;
  final String description;
  final double price;
  final String brand;
  final String benefits;
  final String howToUse;
  final String ingredients;
  final int rating;
  final int reviewsCount;
  final List<String> categories;
  final List<String> media;
  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.brand,
    required this.benefits,
    required this.howToUse,
    required this.ingredients,
    required this.rating,
    required this.reviewsCount,
    required this.categories,
    required this.media,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['price'] = Variable<double>(price);
    map['brand'] = Variable<String>(brand);
    map['benefits'] = Variable<String>(benefits);
    map['how_to_use'] = Variable<String>(howToUse);
    map['ingredients'] = Variable<String>(ingredients);
    map['rating'] = Variable<int>(rating);
    map['reviews_count'] = Variable<int>(reviewsCount);
    {
      map['categories'] = Variable<String>(
        $ProductsTable.$convertercategories.toSql(categories),
      );
    }
    {
      map['media'] = Variable<String>(
        $ProductsTable.$convertermedia.toSql(media),
      );
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      price: Value(price),
      brand: Value(brand),
      benefits: Value(benefits),
      howToUse: Value(howToUse),
      ingredients: Value(ingredients),
      rating: Value(rating),
      reviewsCount: Value(reviewsCount),
      categories: Value(categories),
      media: Value(media),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      price: serializer.fromJson<double>(json['price']),
      brand: serializer.fromJson<String>(json['brand']),
      benefits: serializer.fromJson<String>(json['benefits']),
      howToUse: serializer.fromJson<String>(json['howToUse']),
      ingredients: serializer.fromJson<String>(json['ingredients']),
      rating: serializer.fromJson<int>(json['rating']),
      reviewsCount: serializer.fromJson<int>(json['reviewsCount']),
      categories: serializer.fromJson<List<String>>(json['categories']),
      media: serializer.fromJson<List<String>>(json['media']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'price': serializer.toJson<double>(price),
      'brand': serializer.toJson<String>(brand),
      'benefits': serializer.toJson<String>(benefits),
      'howToUse': serializer.toJson<String>(howToUse),
      'ingredients': serializer.toJson<String>(ingredients),
      'rating': serializer.toJson<int>(rating),
      'reviewsCount': serializer.toJson<int>(reviewsCount),
      'categories': serializer.toJson<List<String>>(categories),
      'media': serializer.toJson<List<String>>(media),
    };
  }

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? brand,
    String? benefits,
    String? howToUse,
    String? ingredients,
    int? rating,
    int? reviewsCount,
    List<String>? categories,
    List<String>? media,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description ?? this.description,
    price: price ?? this.price,
    brand: brand ?? this.brand,
    benefits: benefits ?? this.benefits,
    howToUse: howToUse ?? this.howToUse,
    ingredients: ingredients ?? this.ingredients,
    rating: rating ?? this.rating,
    reviewsCount: reviewsCount ?? this.reviewsCount,
    categories: categories ?? this.categories,
    media: media ?? this.media,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      price: data.price.present ? data.price.value : this.price,
      brand: data.brand.present ? data.brand.value : this.brand,
      benefits: data.benefits.present ? data.benefits.value : this.benefits,
      howToUse: data.howToUse.present ? data.howToUse.value : this.howToUse,
      ingredients: data.ingredients.present
          ? data.ingredients.value
          : this.ingredients,
      rating: data.rating.present ? data.rating.value : this.rating,
      reviewsCount: data.reviewsCount.present
          ? data.reviewsCount.value
          : this.reviewsCount,
      categories: data.categories.present
          ? data.categories.value
          : this.categories,
      media: data.media.present ? data.media.value : this.media,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('brand: $brand, ')
          ..write('benefits: $benefits, ')
          ..write('howToUse: $howToUse, ')
          ..write('ingredients: $ingredients, ')
          ..write('rating: $rating, ')
          ..write('reviewsCount: $reviewsCount, ')
          ..write('categories: $categories, ')
          ..write('media: $media')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    price,
    brand,
    benefits,
    howToUse,
    ingredients,
    rating,
    reviewsCount,
    categories,
    media,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.price == this.price &&
          other.brand == this.brand &&
          other.benefits == this.benefits &&
          other.howToUse == this.howToUse &&
          other.ingredients == this.ingredients &&
          other.rating == this.rating &&
          other.reviewsCount == this.reviewsCount &&
          other.categories == this.categories &&
          other.media == this.media);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<double> price;
  final Value<String> brand;
  final Value<String> benefits;
  final Value<String> howToUse;
  final Value<String> ingredients;
  final Value<int> rating;
  final Value<int> reviewsCount;
  final Value<List<String>> categories;
  final Value<List<String>> media;
  final Value<int> rowid;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.brand = const Value.absent(),
    this.benefits = const Value.absent(),
    this.howToUse = const Value.absent(),
    this.ingredients = const Value.absent(),
    this.rating = const Value.absent(),
    this.reviewsCount = const Value.absent(),
    this.categories = const Value.absent(),
    this.media = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String id,
    required String name,
    required String description,
    required double price,
    required String brand,
    required String benefits,
    required String howToUse,
    required String ingredients,
    required int rating,
    required int reviewsCount,
    required List<String> categories,
    required List<String> media,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       description = Value(description),
       price = Value(price),
       brand = Value(brand),
       benefits = Value(benefits),
       howToUse = Value(howToUse),
       ingredients = Value(ingredients),
       rating = Value(rating),
       reviewsCount = Value(reviewsCount),
       categories = Value(categories),
       media = Value(media);
  static Insertable<Product> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<double>? price,
    Expression<String>? brand,
    Expression<String>? benefits,
    Expression<String>? howToUse,
    Expression<String>? ingredients,
    Expression<int>? rating,
    Expression<int>? reviewsCount,
    Expression<String>? categories,
    Expression<String>? media,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (brand != null) 'brand': brand,
      if (benefits != null) 'benefits': benefits,
      if (howToUse != null) 'how_to_use': howToUse,
      if (ingredients != null) 'ingredients': ingredients,
      if (rating != null) 'rating': rating,
      if (reviewsCount != null) 'reviews_count': reviewsCount,
      if (categories != null) 'categories': categories,
      if (media != null) 'media': media,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? description,
    Value<double>? price,
    Value<String>? brand,
    Value<String>? benefits,
    Value<String>? howToUse,
    Value<String>? ingredients,
    Value<int>? rating,
    Value<int>? reviewsCount,
    Value<List<String>>? categories,
    Value<List<String>>? media,
    Value<int>? rowid,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      brand: brand ?? this.brand,
      benefits: benefits ?? this.benefits,
      howToUse: howToUse ?? this.howToUse,
      ingredients: ingredients ?? this.ingredients,
      rating: rating ?? this.rating,
      reviewsCount: reviewsCount ?? this.reviewsCount,
      categories: categories ?? this.categories,
      media: media ?? this.media,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (benefits.present) {
      map['benefits'] = Variable<String>(benefits.value);
    }
    if (howToUse.present) {
      map['how_to_use'] = Variable<String>(howToUse.value);
    }
    if (ingredients.present) {
      map['ingredients'] = Variable<String>(ingredients.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (reviewsCount.present) {
      map['reviews_count'] = Variable<int>(reviewsCount.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(
        $ProductsTable.$convertercategories.toSql(categories.value),
      );
    }
    if (media.present) {
      map['media'] = Variable<String>(
        $ProductsTable.$convertermedia.toSql(media.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('brand: $brand, ')
          ..write('benefits: $benefits, ')
          ..write('howToUse: $howToUse, ')
          ..write('ingredients: $ingredients, ')
          ..write('rating: $rating, ')
          ..write('reviewsCount: $reviewsCount, ')
          ..write('categories: $categories, ')
          ..write('media: $media, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}

typedef $$ProductsTableCreateCompanionBuilder =
    ProductsCompanion Function({
      required String id,
      required String name,
      required String description,
      required double price,
      required String brand,
      required String benefits,
      required String howToUse,
      required String ingredients,
      required int rating,
      required int reviewsCount,
      required List<String> categories,
      required List<String> media,
      Value<int> rowid,
    });
typedef $$ProductsTableUpdateCompanionBuilder =
    ProductsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> description,
      Value<double> price,
      Value<String> brand,
      Value<String> benefits,
      Value<String> howToUse,
      Value<String> ingredients,
      Value<int> rating,
      Value<int> reviewsCount,
      Value<List<String>> categories,
      Value<List<String>> media,
      Value<int> rowid,
    });

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get benefits => $composableBuilder(
    column: $table.benefits,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get howToUse => $composableBuilder(
    column: $table.howToUse,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ingredients => $composableBuilder(
    column: $table.ingredients,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reviewsCount => $composableBuilder(
    column: $table.reviewsCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get categories => $composableBuilder(
    column: $table.categories,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get media => $composableBuilder(
    column: $table.media,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get benefits => $composableBuilder(
    column: $table.benefits,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get howToUse => $composableBuilder(
    column: $table.howToUse,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ingredients => $composableBuilder(
    column: $table.ingredients,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reviewsCount => $composableBuilder(
    column: $table.reviewsCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categories => $composableBuilder(
    column: $table.categories,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get media => $composableBuilder(
    column: $table.media,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get benefits =>
      $composableBuilder(column: $table.benefits, builder: (column) => column);

  GeneratedColumn<String> get howToUse =>
      $composableBuilder(column: $table.howToUse, builder: (column) => column);

  GeneratedColumn<String> get ingredients => $composableBuilder(
    column: $table.ingredients,
    builder: (column) => column,
  );

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<int> get reviewsCount => $composableBuilder(
    column: $table.reviewsCount,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>, String> get categories =>
      $composableBuilder(
        column: $table.categories,
        builder: (column) => column,
      );

  GeneratedColumnWithTypeConverter<List<String>, String> get media =>
      $composableBuilder(column: $table.media, builder: (column) => column);
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
          Product,
          PrefetchHooks Function()
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<double> price = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> benefits = const Value.absent(),
                Value<String> howToUse = const Value.absent(),
                Value<String> ingredients = const Value.absent(),
                Value<int> rating = const Value.absent(),
                Value<int> reviewsCount = const Value.absent(),
                Value<List<String>> categories = const Value.absent(),
                Value<List<String>> media = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                name: name,
                description: description,
                price: price,
                brand: brand,
                benefits: benefits,
                howToUse: howToUse,
                ingredients: ingredients,
                rating: rating,
                reviewsCount: reviewsCount,
                categories: categories,
                media: media,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String description,
                required double price,
                required String brand,
                required String benefits,
                required String howToUse,
                required String ingredients,
                required int rating,
                required int reviewsCount,
                required List<String> categories,
                required List<String> media,
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                name: name,
                description: description,
                price: price,
                brand: brand,
                benefits: benefits,
                howToUse: howToUse,
                ingredients: ingredients,
                rating: rating,
                reviewsCount: reviewsCount,
                categories: categories,
                media: media,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, BaseReferences<_$AppDatabase, $ProductsTable, Product>),
      Product,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
}
