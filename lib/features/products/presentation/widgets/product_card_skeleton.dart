import 'package:flutter/material.dart';
import 'package:labonne_sante/core/constants/colors.dart';

class ProductCardSkeleton extends StatelessWidget {
  const ProductCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final baseColor = colorScheme.surfaceContainerHighest.withValues(
      alpha: 0.4,
    );

    return SizedBox(
      width: 249,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 249 / 316,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.cardBorder, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.hardEdge,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(color: baseColor),
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Title placeholder
          Container(
            height: 16,
            width: double.infinity,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(height: 8),
          // Subtitle (brand) placeholder
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Container(
              height: 14,
              decoration: BoxDecoration(
                color: baseColor,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Price placeholder
          FractionallySizedBox(
            widthFactor: 0.35,
            child: Container(
              height: 18,
              decoration: BoxDecoration(
                color: baseColor,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
