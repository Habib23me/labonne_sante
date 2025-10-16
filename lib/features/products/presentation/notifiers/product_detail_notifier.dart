import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_notifier.dart';

final productDetailProvider = FutureProvider.autoDispose
    .family<Product, String>((ref, id) async {
      final productRepository = ref.watch(productRepositoryProvider);
      return productRepository.getProductById(id);
    });
