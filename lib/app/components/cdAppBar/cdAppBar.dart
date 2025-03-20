import 'package:flutter/material.dart';
// import 'package:sass_h5/utils/navigation.dart';

class CdAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; //导航标题
  final List<Widget>? actions; //导航栏右侧icon
  final Widget? leading; //导航栏左侧icon（默认是返回图标）
  final bool centerTitle; //标题是否居中显示
  final VoidCallback? onBackPress; //返回图标的点击事件
  final Color foregroundColor; //设置返回图标的颜色

  const CdAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle = true,
    this.onBackPress,
    this.foregroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    // 获取当前主题
    final ThemeData theme = Theme.of(context);
    // 获取导航栏背景色
    final Color? appBarBackgroundColor = theme.appBarTheme.backgroundColor;

    return AppBar(
      title: Text(title),
      actions: actions,
      backgroundColor: appBarBackgroundColor,
      leading: leading,
      foregroundColor: foregroundColor,
      // leading: onBackPress != null
      //     ? IconButton(
      //         icon: const Icon(Icons.arrow_back),
      //         onPressed: () {
      //           if (onBackPress != null) {
      //             onBackPress!();
      //           } else {
      //             Link.back();
      //           }
      //         },
      //       )
      //     : null,
      elevation: 0,
    );
  }

  // kToolbarHeight ：Flutter 默认的 AppBar 高度（56.0 逻辑像素）。
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
