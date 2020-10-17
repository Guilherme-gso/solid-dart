import '../entities/User.dart';

abstract class IUsersRepository {
  User create(String name, String email, String password);
}
