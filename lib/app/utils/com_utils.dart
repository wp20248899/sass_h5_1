// TODO: 加载本地公共目录下的图片和不同模版主题下的图片
class LoadPathUtils {
  // 1、加载公共图片public目录下
  static String pubPath(String name) {
    return 'assets/images/public/$name';
  }

  // 2、加载不同模版主题下的图片路径
  static String themePath(String theme, String name) {
    return 'assets/images/$theme/$name';
  }
}
