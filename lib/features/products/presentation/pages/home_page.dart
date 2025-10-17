import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:labonne_sante/core/constants/assets.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_notifier.dart';
import 'package:labonne_sante/features/banners/presentation/notifiers/banner_notifier.dart';
import 'package:labonne_sante/features/categories/presentation/notifiers/category_notifier.dart';
import 'package:labonne_sante/features/products/presentation/pages/product_detail_page.dart';
import 'package:labonne_sante/features/banners/presentation/widgets/home_carousel.dart';
import 'package:labonne_sante/features/categories/presentation/widgets/category_strip.dart';
import 'package:labonne_sante/features/products/presentation/widgets/section_header.dart';
import 'package:labonne_sante/features/products/presentation/widgets/product_horizontal_list.dart';
import 'package:labonne_sante/core/widgets/glass_app_bar.dart';
import 'package:labonne_sante/core/widgets/section_error_placeholder.dart';
import 'package:labonne_sante/core/l10n/l10n_extensions.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    final banners = ref.watch(bannersProvider);
    final categories = ref.watch(categoriesProvider);

    final l10n = context.l10n;
    final height = products.isLoading ? kToolbarHeight : 12.0;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlassAppBar(
        title: Image.asset(
          AssetsConstants.logo,
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
      body: RefreshIndicator.adaptive(
        displacement: kToolbarHeight * 2.2,
        onRefresh: () async {
          await Future.wait([
            ref.refresh(bannersProvider.future),
            ref.refresh(categoriesProvider.future),
            ref.read(productsProvider.notifier).getProducts(forceRefresh: true),
          ]);
        },
        child: ListView(
          children: [
            SizedBox(height: height),
            banners.when(
              data: (data) => HomeCarousel(banners: data),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => SectionErrorPlaceholder(
                title: l10n.somethingWentWrong,
                message: l10n.bannersErrorMessage,
                onRetry: () => ref.refresh(bannersProvider.future),
                height: 272,
              ),
            ),
            const SizedBox(height: 12),
            categories.when(
              data: (data) => CategoryStrip(categories: data),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => SectionErrorPlaceholder(
                title: l10n.categoriesTitle,
                message: l10n.categoriesErrorMessage,
                height: 160,
                onRetry: () => ref.refresh(categoriesProvider.future),
              ),
            ),
            const SizedBox(height: 16),
            SectionHeader(
              title: l10n.specialOffersTitle,
              subtitle: l10n.specialOffersSubtitle,
              actionText: l10n.viewAll,
            ),
            products.when(
              data: (data) => ProductHorizontalList(
                products: data,
                badgeBuilder: (_) => Text(
                  l10n.badgeDiscount25,
                  style: const TextStyle(
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
              error: (error, stack) => SectionErrorPlaceholder(
                title: l10n.specialOffersTitle,
                message: l10n.productsErrorMessage,
                height: 390,
                onRetry: () =>
                    ref.read(productsProvider.notifier).getProducts(),
              ),
            ),
            const SizedBox(height: 16),
            SectionHeader(
              title: l10n.trendingNowTitle,
              subtitle: l10n.trendingNowSubtitle,
              actionText: l10n.viewAll,
            ),
            // For simplicity, we're using the same products list for trending now and special offers
            // In a real app, we would use different products lists based on filters
            products.when(
              data: (data) => ProductHorizontalList(
                products: data,
                badgeBuilder: (_) => Text(
                  l10n.badgeNew,
                  style: const TextStyle(
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
              error: (error, stack) => SectionErrorPlaceholder(
                title: l10n.trendingNowTitle,
                message: l10n.productsErrorMessage,
                height: 390,
                onRetry: () =>
                    ref.read(productsProvider.notifier).getProducts(),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
