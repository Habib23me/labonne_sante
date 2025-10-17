import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:labonne_sante/core/constants/colors.dart';
import 'package:labonne_sante/features/categories/domain/entities/category.dart'
    as category_entity;

class CategoryStrip extends StatelessWidget {
  final List<category_entity.Category> categories;
  final ValueChanged<category_entity.Category>? onTap;

  const CategoryStrip({super.key, required this.categories, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: 160,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 12, right: 12),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final subtitle = cat.description;
          return InkWell(
            onTap: onTap == null ? null : () => onTap!(cat),
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: 130,
              height: 160,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.cardBorder, width: 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.hardEdge,
                child: ClipRRect(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // background gradient
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withValues(alpha: 0.20),
                              Colors.white.withValues(alpha: 0.10),
                              Color.fromARGB(255, 223, 220, 220),
                            ],
                            stops: const [0.0, 0.5, 1.0],
                          ),
                        ),
                      ),
                      // text top-left
                      Positioned(
                        left: 12,
                        top: 12,
                        right: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cat.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.titleSmall?.copyWith(
                                color: colorScheme.onSurface.withValues(
                                  alpha: 0.82,
                                ),
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                            if (subtitle.isNotEmpty) ...[
                              const SizedBox(height: 2),
                              Text(
                                subtitle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      // icon bottom-right in frosted square
                      Positioned(
                        right: 12,
                        bottom: 12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: Container(
                              width: 55,
                              height: 55,
                              padding: const EdgeInsets.all(8),
                              // color: Color.fromARGB(255, 246, 244, 244),
                              alignment: Alignment.center,
                              child: _CategoryIcon(iconPath: cat.icon),
                            ),
                          ),
                        ),
                      ),
                      // soft highlight overlay
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.transparent,
                              Colors.white.withValues(alpha: 0.05),
                              Colors.white.withValues(alpha: 0.10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: categories.length,
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final String iconPath;
  const _CategoryIcon({required this.iconPath});

  bool get _isNetwork => iconPath.startsWith('http');

  @override
  Widget build(BuildContext context) {
    if (_isNetwork) {
      return CachedNetworkImage(imageUrl: iconPath, fit: BoxFit.contain);
    }
    return Image.asset(iconPath, fit: BoxFit.contain);
  }
}
