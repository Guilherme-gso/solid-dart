import '../../providers/IMailProvider.dart';
import '../../repositories/IUsersRepository.dart';

class CreateUserService {
  IUsersRepository usersRepository;
  IMailProvider mailProvider;

  CreateUserService(
      IUsersRepository usersRepository, IMailProvider mailProvider) {
    this.usersRepository = usersRepository;
    this.mailProvider = mailProvider;
  }

  Future<String> execute(String name, String email, String password) async {
    var user = usersRepository.create(name, email, password);

    var sentEmail = await mailProvider.sendMessage(
        'Amazing application build with dart.',
        user.email,
        'Hello, this is my first application build with dart language 😎',
        '<h1>Confirm your register in my first flutter app using concerns of solid 😎</h1>');

    print(sentEmail);

    return sentEmail;
  }
}
