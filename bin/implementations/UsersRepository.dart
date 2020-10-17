import '../entities/User.dart';
import '../repositories/IUsersRepository.dart';

class UsersRepository implements IUsersRepository {
  @override
  User create(String name, String email, String password) {
    var user = User(name, email, password);

    return user;
  }
}
