import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariables {
  // Singleton
  // تطبيق المبدأ؛ لجعل الاسم برايفت
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();
  // إنشاء متغير برايفت لإحضار الداتا التي فيه
  String _envType = '';
  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    //
    _envType = dotenv.get('ENV_TYPE');
  }

  // ميثود الجيت
  // String get envType => _envType;
  // احدد وضع افتراضي لها
  bool get debugMode => _envType == 'dev';
}

enum EnvTypeEnum { dev, prod }
