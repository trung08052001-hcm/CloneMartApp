import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NetWorkImageWidget extends StatelessWidget {
  const NetWorkImageWidget({
    required this.url,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeHolder,
    this.borderRadius = 0,
    this.opacity = 1.0,
    this.borderRadiusGeometry,
    this.boxBorder,
    this.boxShape = BoxShape.rectangle,
    Key? key,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double borderRadius;
  final double opacity;
  final String url;
  final BoxFit fit;
  final BoxShape boxShape;
  final BoxBorder? boxBorder;
  final Widget? placeHolder;

  final BorderRadiusGeometry? borderRadiusGeometry;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageBuilder: (_, ImageProvider<Object> imageProvider) => Container(
              decoration: BoxDecoration(
                shape: boxShape,
                border: boxBorder,
                borderRadius: boxShape == BoxShape.circle
                    ? null
                    : borderRadiusGeometry ??
                        BorderRadius.circular(borderRadius),
                image: DecorationImage(
                  opacity: opacity,
                  image: imageProvider,
                  fit: fit,
                ),
              ),
            ),
        placeholder: (_, __) =>
            placeHolder ??
            const Center(
              child: CircularProgressIndicator(),
            ),
        fit: fit,
        height: height,
        width: width,
        imageUrl: url);
  }
}
