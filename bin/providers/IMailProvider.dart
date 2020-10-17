abstract class IMailProvider {
  Future<String> sendMessage(
      String subject, String destination, String text, String html);
}
