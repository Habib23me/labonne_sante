import 'package:flutter/material.dart';
import 'package:labonne_sante/core/l10n/l10n_extensions.dart';

class SectionErrorPlaceholder extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onRetry;
  final double? height;

  const SectionErrorPlaceholder({
    super.key,
    required this.title,
    required this.message,
    this.onRetry,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, color: colorScheme.primary, size: 28),
          const SizedBox(height: 8),
          Text(
            title,
            style: textTheme.titleSmall?.copyWith(color: colorScheme.onSurface),
          ),
          const SizedBox(height: 4),
          Text(
            message,
            textAlign: TextAlign.center,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(context.l10n.retry),
            ),
          ],
        ],
      ),
    );

    if (height != null) {
      return SizedBox(height: height, child: content);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: content,
    );
  }
}
