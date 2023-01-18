import 'package:flutter_envify/flutter_envify.dart';
part 'env.g.dart';

@Envify()
abstract class Env {
  static const baseUrl = _Env.baseUrl;
  
}
