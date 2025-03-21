import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sass_h5_1/app/utils/com_utils.dart' show LoadPathUtils;

// 父类 - BaseImage
abstract class BaseImage extends StatelessWidget {
  final String? src; //图片路径
  final Widget placeholder; // 占位符图片
  final Widget errorWidget; // 错误图片
  final double? width; // 宽度
  final double? height; // 高度
  final double borderRadius; // 圆角半径
  final double borderWidth; // 边框宽度
  final Color borderColor; // 边框颜色
  final BoxFit? fit; // 图片平铺方式

  const BaseImage({
    super.key,
    required this.src,
    this.placeholder = const CircularProgressIndicator(),
    this.errorWidget = const Icon(Icons.error, color: Colors.red),
    this.width,
    this.height,
    this.borderRadius = 0,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.fit,
  });

  // 通用方法 - Widget
  Widget buildImage(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border:
              borderWidth > 0
                  ? Border.all(color: borderColor, width: borderWidth)
                  : null,
        ),
        child: buildImage(context),
      ),
    );
  }
}

// 子类 CdPublicImage - 加载公共图片路径
class CdPublicImage extends BaseImage {
  const CdPublicImage({
    super.key,
    required String super.src,
    super.width,
    super.height,
    super.fit,
    super.borderRadius,
    super.borderWidth,
    super.borderColor,
  });
  @override
  Widget buildImage(BuildContext context) {
    return Image.asset(
      LoadPathUtils.pubPath(src!),
      fit: fit ?? BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => errorWidget,
    );
  }
}

// 子类 CdTempImage - 加载不同模版主题下的图片路径
class CdTempImage extends BaseImage {
  const CdTempImage({
    super.key,
    required String super.src,
    super.width,
    super.height,
    super.fit,
    super.borderRadius,
    super.borderWidth,
    super.borderColor,
  });
  @override
  Widget buildImage(BuildContext context) {
    return Image.asset(
      LoadPathUtils.themePath(src!),
      fit: fit ?? BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => errorWidget,
    );
  }
}

// 子类 CdRemoteImage - 远程图片路径
class CdRemoteImage extends BaseImage {
  const CdRemoteImage({
    super.key,
    required super.src,
    super.width,
    super.height,
    super.fit,
    super.borderRadius,
    super.borderWidth,
    super.borderColor,
  });
  @override
  Widget buildImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: src ?? '',
      fit: fit ?? BoxFit.cover,
      placeholder: (context, url) => placeholder,
      errorWidget: (context, url, error) => errorWidget,
    );
  }
}
