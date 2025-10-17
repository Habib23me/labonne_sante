import 'package:flutter/material.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart'
    as product_entity;
import 'package:labonne_sante/features/products/presentation/widgets/product_card.dart';
import 'package:labonne_sante/features/products/presentation/widgets/product_card_skeleton.dart';

class ProductHorizontalList extends StatelessWidget {
  final List<product_entity.Product> products;
  final Widget Function(product_entity.Product product)? badgeBuilder;
  final ValueChanged<product_entity.Product>? onProductTap;
  final bool isLoading;
  final int skeletonCount;

  const ProductHorizontalList({
    super.key,
    required this.products,
    this.badgeBuilder,
    this.onProductTap,
    this.isLoading = false,
    this.skeletonCount = 5,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (isLoading) {
            return const ProductCardSkeleton();
          }
          final product = products[index];
          return ProductCard(
            product: product,
            badge: badgeBuilder?.call(product),
            onTap: () => onProductTap?.call(product),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: isLoading ? skeletonCount : products.length,
      ),
    );
  }
}
