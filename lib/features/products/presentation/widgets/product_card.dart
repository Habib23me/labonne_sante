import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:labonne_sante/core/constants/colors.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart'
    as product_entity;

class ProductCard extends StatelessWidget {
  final product_entity.Product product;
  final VoidCallback? onTap;
  final Widget? badge;

  const ProductCard({super.key, required this.product, this.onTap, this.badge});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 249,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 249 / 316,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.cardBorder, width: 1),
                ),
                clipBehavior: Clip.hardEdge,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: product.media.first,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: colorScheme.surfaceContainerLowest,
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.favorite_border, size: 20),
                          ),
                        ),
                      ),
                      if (badge != null)
                        Positioned(
                          left: 8,
                          bottom: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: colorScheme.primary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: badge!,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleSmall,
            ),
            Text(
              product.brand,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),

            ///Hardcoding currency for now for the sake of simplicity
            Text(
              '${product.price.toStringAsFixed(2)} AED',
              style: textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
