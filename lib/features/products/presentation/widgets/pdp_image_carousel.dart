import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PdpImageCarousel extends StatefulWidget {
  final List<String> images;
  const PdpImageCarousel({super.key, required this.images});

  @override
  State<PdpImageCarousel> createState() => _PdpImageCarouselState();
}

class _PdpImageCarouselState extends State<PdpImageCarousel> {
  int _current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          itemCount: widget.images.length,
          options: CarouselOptions(
            aspectRatio: 430 / 296,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            padEnds: false,
            enableInfiniteScroll: widget.images.length > 1,
            onPageChanged: (index, reason) => setState(() => _current = index),
          ),
          itemBuilder: (context, i, realIndex) =>
              CachedNetworkImage(imageUrl: widget.images[i], fit: BoxFit.cover),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.images.length, (i) {
            final isActive = i == _current;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 2,
              width: isActive ? 24 : 12,
              decoration: BoxDecoration(
                color: isActive
                    ? colorScheme.onSurface
                    : colorScheme.onSurface.withValues(alpha: .1),
                borderRadius: BorderRadius.circular(24),
              ),
            );
          }),
        ),
      ],
    );
  }
}
