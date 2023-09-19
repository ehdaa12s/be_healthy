
import 'package:url_launcher/url_launcher.dart';
Future<void> dialNumber({required String phoneNumber}) async {
  try {
    await launch('tel:$phoneNumber');
  } catch (e) {
 {
      print(e);
    }
  }
}



