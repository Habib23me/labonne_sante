import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_notifier.dart';
import 'package:labonne_sante/features/products/presentation/pages/product_detail_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    final banners = ref.watch(bannersProvider);
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('La Bonne Sante')),
      body: ListView(
        children: [
          banners.when(
            data: (data) => SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) =>
                    Image.network(data[index].imageUrl),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text(error.toString()),
          ),
          categories.when(
            data: (data) => SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    // You can use an SVG loader here for the icons
                    const Icon(Icons.category, size: 40),
                    Text(data[index].title),
                  ],
                ),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text(error.toString()),
          ),
          const Text('New Arrivals'),
          products.when(
            data: (data) => SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailPage(productId: data[index].id),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.network(data[index].media.first, height: 100),
                      Text(data[index].name),
                      Text(data[index].price.toString()),
                    ],
                  ),
                ),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text(error.toString()),
          ),
          const Text('Special Offers'),
          products.when(
            data: (data) => SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailPage(productId: data[index].id),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.network(data[index].media.first, height: 100),
                      Text(data[index].name),
                      Text(data[index].price.toString()),
                    ],
                  ),
                ),
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Text(error.toString()),
          ),
        ],
      ),
    );
  }
}
