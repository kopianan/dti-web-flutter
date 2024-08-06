import 'package:universal_html/html.dart' as html;

class AccountUtil {
  String? isFromPhone() {
    String userAgent = html.window.navigator.userAgent.toString().toLowerCase();

    if (userAgent.contains("iphone") ||
        userAgent.contains("ipad") ||
        html.window.navigator.platform!.toLowerCase().contains("macintel") &&
            html.window.navigator.maxTouchPoints! > 0) {
      return 'iphone';
    } else if (userAgent.contains("android")) {
      return 'android';
    } else {
      if (html.window.navigator.userAgent.contains('Mobi')) {
        return 'iphone';
      } else {
        return null;
      }
    }
  }
}
