import 'package:flutter/material.dart';

class PdpExpandableSection extends StatefulWidget {
  final String title;
  final Widget child;
  const PdpExpandableSection({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  State<PdpExpandableSection> createState() => _PdpExpandableSectionState();
}

class _PdpExpandableSectionState extends State<PdpExpandableSection> {
  bool _open = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(child: Text(widget.title, style: textTheme.titleMedium)),
              IconButton(
                onPressed: () => setState(() => _open = !_open),
                icon: Icon(_open ? Icons.expand_less : Icons.expand_more),
              ),
            ],
          ),
        ),
        AnimatedCrossFade(
          crossFadeState: _open
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 200),
          firstChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: widget.child,
          ),
          secondChild: const SizedBox.shrink(),
        ),
        const SizedBox(height: 12),
        Container(height: 6, color: const Color(0xFFF7F8F9)),
      ],
    );
  }
}
