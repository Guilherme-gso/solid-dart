import '../../implementations/MailProviderImplementation.dart';
import 'CreateUserService.dart';
import '../../implementations/UsersRepository.dart';

class CreateUserController {
  Future<String> handle(String name, String email, String password) {
    var usersRepository = UsersRepository();
    var mailProvider = MailProviderImplementation();

    var createUser = CreateUserService(usersRepository, mailProvider);

    var createdStatus = createUser.execute(name, email, password);

    return createdStatus;
  }
}
