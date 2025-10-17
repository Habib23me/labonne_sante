import 'package:flutter/material.dart';

class PdpRatingRow extends StatelessWidget {
  final double rating;
  final int reviewsCount;
  const PdpRatingRow({
    super.key,
    required this.rating,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        ...List.generate(
          5,
          (i) => Icon(
            Icons.star,
            size: 18,
            color: i < rating.round()
                ? Colors.amber
                : Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${rating.toStringAsFixed(1)} ($reviewsCount reviews)',
          style: textTheme.bodySmall,
        ),
      ],
    );
  }
}
