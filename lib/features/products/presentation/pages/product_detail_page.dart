import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/features/products/presentation/notifiers/product_detail_notifier.dart';
import 'package:labonne_sante/features/products/presentation/widgets/pdp_image_carousel.dart';
import 'package:labonne_sante/features/products/presentation/widgets/pdp_rating_row.dart';
import 'package:labonne_sante/features/products/presentation/widgets/pdp_expandable_section.dart';
import 'package:labonne_sante/core/widgets/glass_app_bar.dart';
import 'package:labonne_sante/core/l10n/l10n_extensions.dart';

class ProductDetailPage extends ConsumerWidget {
  final String productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailProvider(productId));

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return product.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, s) => Scaffold(body: Center(child: Text(e.toString()))),
      data: (data) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: GlassAppBar(
          title: Text(data.name),
          actions: const [
            Icon(Icons.share_outlined),
            SizedBox(width: 8),
            Icon(Icons.favorite_border),
            SizedBox(width: 8),
          ],
        ),
        bottomNavigationBar: SafeArea(
          top: false,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              border: Border(
                top: BorderSide(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.12),
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${data.price.toStringAsFixed(2)} AED',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        context.l10n.pdpShopNowPayLater,
                        style: textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: colorScheme.onSurface,
                    foregroundColor: colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text(context.l10n.pdpAddToCart),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            // Images carousel
            PdpImageCarousel(images: data.media),
            const SizedBox(height: 12),
            // Title + category + rating
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.name, style: textTheme.headlineSmall),
                  Text(
                    data.categories.isNotEmpty ? data.categories.first : '',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  PdpRatingRow(
                    rating: data.rating.toDouble(),
                    reviewsCount: data.reviewsCount,
                  ),
                ],
              ),
            ),
            // Divider strip
            const SizedBox(height: 12),
            Container(height: 6, color: const Color(0xFFF7F8F9)),
            // Description section
            PdpExpandableSection(
              title: context.l10n.pdpDescription,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.description,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            // Size & Fit
            PdpExpandableSection(
              title: context.l10n.pdpSizeAndFit,
              child: Text(
                context.l10n.pdpSizeAndFitDetails,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            // Materials & Care
            PdpExpandableSection(
              title: context.l10n.pdpMaterialsAndCare,
              child: Text(
                context.l10n.pdpMaterialsAndCareDetails,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
