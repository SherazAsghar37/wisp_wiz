import 'dart:io';
import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisp_wiz/core/utils/constants/enums.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';

class AppRoundImage extends StatelessWidget {
  final bool applyImageRadius;
  final double width, height, padding, radius;
  final ImageType imageType;
  final Color? overlayColor;
  final String? image;
  final BoxFit? boxFit;
  final double? margin;
  final BoxBorder? border;
  final File? file;
  final Color? backgroundColor;
  final Uint8List? memoryImage;

  const AppRoundImage({
    super.key,
    this.boxFit = BoxFit.contain,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
    this.applyImageRadius = true,
    this.radius = AppSizes.md,
    this.imageType = ImageType.asset,
    this.image,
    this.border,
    this.file,
    this.overlayColor,
    this.backgroundColor,
    this.memoryImage,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin != null ? EdgeInsets.all(margin!) : null,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: border,
      ),
      child: _buildImageWidget(),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;
    switch (imageType) {
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
      case ImageType.network:
        imageWidget = _buildNetworkImage();
        break;
      case ImageType.file:
        imageWidget = _buildFileImage();
        break;
      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;
    }

    return ClipRRect(
      borderRadius:
          applyImageRadius ? BorderRadius.circular(radius) : BorderRadius.zero,
      child: imageWidget,
    );
  }

  Widget _buildAssetImage() {
    return image == null
        ? SizedBox()
        : Image.asset(image!, fit: boxFit, color: overlayColor);
  }

  Widget _buildNetworkImage() {
    return image == null
        ? SizedBox()
        : CachedNetworkImage(
          imageUrl: image!,
          fit: boxFit,
          color: overlayColor,
          errorWidget: (context, url, error) => Icon(Icons.error),
          progressIndicatorBuilder: (context, url, progress) => Container(),
        );
  }

  Widget _buildFileImage() {
    return file == null
        ? SizedBox()
        : Image.file(file!, fit: boxFit, color: overlayColor);
  }

  Widget _buildMemoryImage() {
    return memoryImage == null
        ? SizedBox()
        : Image.memory(memoryImage!, fit: boxFit, color: overlayColor);
  }
}
