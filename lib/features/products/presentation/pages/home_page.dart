import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_notifier.dart';
import 'package:labonne_sante/features/products/presentation/pages/product_detail_page.dart';
import 'package:labonne_sante/features/products/presentation/widgets/home_carousel.dart';
import 'package:labonne_sante/features/products/presentation/widgets/category_strip.dart';
import 'package:labonne_sante/features/products/presentation/widgets/section_header.dart';
import 'package:labonne_sante/features/products/presentation/widgets/product_horizontal_list.dart';
import 'package:labonne_sante/core/widgets/glass_app_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    final banners = ref.watch(bannersProvider);
    final categories = ref.watch(categoriesProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlassAppBar(
        title: Image.asset(
          'assets/logo/logo.png',
          width: 170,
          fit: BoxFit.contain,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal_1_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: ref.read(productsProvider.notifier).getProducts,
        child: ListView(
          children: [
            const SizedBox(height: 12),
            banners.when(
              data: (data) => HomeCarousel(banners: data),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Text(error.toString()),
            ),
            const SizedBox(height: 12),
            categories.when(
              data: (data) => CategoryStrip(categories: data),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Text(error.toString()),
            ),
            const SizedBox(height: 16),
            const SectionHeader(
              title: 'Special Offers',
              subtitle: "Don’t miss out on our exclusive deals.",
              actionText: 'View All',
            ),
            products.when(
              data: (data) => ProductHorizontalList(
                products: data,
                badgeBuilder: (_) => const Text(
                  '25% Off',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onProductTap: (p) => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(productId: p.id),
                  ),
                ),
              ),
              loading: () =>
                  const ProductHorizontalList(products: [], isLoading: true),
              error: (error, stack) => Text(error.toString()),
            ),
            const SizedBox(height: 16),
            const SectionHeader(
              title: 'Trending Now',
              subtitle: "Discover what's new and elevate your style.",
              actionText: 'View All',
            ),
            products.when(
              data: (data) => ProductHorizontalList(
                products: data,
                badgeBuilder: (_) => const Text(
                  'New',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onProductTap: (p) => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(productId: p.id),
                  ),
                ),
              ),
              loading: () =>
                  const ProductHorizontalList(products: [], isLoading: true),
              error: (error, stack) => Text(error.toString()),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
