import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonNetworkImage extends StatelessWidget {
  final String url;
  final BorderRadius borderRadius;

  const SkeletonNetworkImage({
    super.key,
    required this.url,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        placeholder: (context, url) => const Skeletonizer(
          child: Bone(
            width: double.infinity,
            height: double.infinity,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        errorWidget: (_, _, _) => Container(
          color: Colors.grey[300],
          child: const Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}