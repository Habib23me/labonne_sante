import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/core/api/dio_client.dart';
import 'package:labonne_sante/core/db/app_database.dart';

final dioProvider = Provider((ref) => Dio());

final dioClientProvider = Provider((ref) => DioClient(ref.watch(dioProvider)));

final appDatabaseProvider = Provider((ref) => AppDatabase());
