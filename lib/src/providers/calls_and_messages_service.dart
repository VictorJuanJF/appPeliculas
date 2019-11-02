import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class CallsAndMessagesService {
  void call(String number) => UrlLauncher.launch("tel:$number");
  void sendSms(String number) => UrlLauncher.launch("sms:$number");
  void sendEmail(String email) => UrlLauncher.launch("mailto:$email");
}
