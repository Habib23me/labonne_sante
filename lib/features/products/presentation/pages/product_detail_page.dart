import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_detail_notifier.dart';

class ProductDetailPage extends ConsumerWidget {
  final String productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(productId));

    return Scaffold(
      appBar: AppBar(
        title: product.when(
          data: (data) => Text(data.name),
          loading: () => const Text(''),
          error: (error, stack) => const Text('Error'),
        ),
      ),
      body: product.when(
        data: (data) => ListView(
          children: [
            Image.network(data.media.first, height: 300),
            Text(data.name, style: Theme.of(context).textTheme.headlineMedium),
            Text(data.description),
            Text(
              data.price.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(data.rating.toString()),
                const SizedBox(width: 8),
                Text('(${data.reviewsCount} reviews)'),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Add to Cart')),
            const Text('Frequently Bought Together'),
            // For now, just show a list of all products
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Text(error.toString()),
      ),
    );
  }
}
