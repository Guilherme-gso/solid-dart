import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../providers/IMailProvider.dart';

class MailProviderImplementation implements IMailProvider {
  @override
  Future<String> sendMessage(
      String subject, String destination, String text, String html) async {
    final smtpServer = SmtpServer('smtp.mailtrap.io',
        port: 2525, username: 'd9e4e3dda7feb5', password: '6f3ebde11a410f');

    final message = Message()
      ..from = Address('johndoe@example.com', 'John Doe')
      ..recipients.add(destination)
      ..subject = subject
      ..text = text
      ..html = html;

    try {
      await send(message, smtpServer);
      return 'A confirmation message has been sent to your email: ${destination}.';
    } on MailerException catch (error) {
      return 'Has been occurrend an error ${error.message}';
    }
  }
}
