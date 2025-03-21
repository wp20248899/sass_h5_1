import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sass_h5_1/app/utils/com_utils.dart' show LoadPathUtils;

class CdImage extends StatelessWidget {
  final String? src; //图片路径
  final bool isLocal; //是否是本地图片
  final Widget placeholder; // 占位符图片
  final Widget errorWidget; // 错误图片
  final double? width; // 宽度
  final double? height; // 高度
  final double borderRadius; // 圆角半径
  final double borderWidth; // 边框宽度
  final Color borderColor; // 边框颜色
  final BoxFit? fit; // 图片平铺方式

  const CdImage({
    super.key,
    required this.src,
    this.isLocal = true,
    this.placeholder = const CircularProgressIndicator(),
    this.errorWidget = const Icon(Icons.error, color: Colors.red),
    this.width,
    this.height,
    this.borderRadius = 0,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    this.fit,
  });

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
        child: _buildImage(),
      ),
    );
  }

  // 构建图片内容
  Widget _buildImage() {
    if (isLocal) {
      // 加载本地图片
      return Image.asset(
        LoadPathUtils.pubPath(src!),
        fit: fit ?? BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => errorWidget,
      );
    } else {
      // 加载远程图片
      return CachedNetworkImage(
        imageUrl: src ?? '',
        fit: fit ?? BoxFit.cover,
        placeholder: (context, url) => placeholder,
        errorWidget: (context, url, error) => errorWidget,
      );
    }
  }
}
