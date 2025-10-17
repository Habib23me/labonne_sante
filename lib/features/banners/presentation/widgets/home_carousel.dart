import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:labonne_sante/features/banners/domain/entities/banner.dart'
    as banner_entity;
import 'package:labonne_sante/core/l10n/l10n_extensions.dart';

class HomeCarousel extends StatefulWidget {
  final List<banner_entity.Banner> banners;

  const HomeCarousel({super.key, required this.banners});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = context.l10n;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
          child: CarouselSlider.builder(
            itemCount: widget.banners.length,
            options: CarouselOptions(
              height: 232,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              padEnds: false,
              enableInfiniteScroll: widget.banners.length > 1,
              onPageChanged: (index, reason) =>
                  setState(() => _current = index),
            ),
            itemBuilder: (context, index, realIndex) {
              final banner = widget.banners[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: banner.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.surface,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Text(
                              l10n.carouselCtaShopNow,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        _DotsIndicator(count: widget.banners.length, currentIndex: _current),
      ],
    );
  }
}

class _DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const _DotsIndicator({required this.count, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 2,
          width: isActive ? 24 : 12,
          decoration: BoxDecoration(
            color: isActive
                ? colorScheme.onSurface
                : colorScheme.onSurface.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(24),
          ),
        );
      }),
    );
  }
}
