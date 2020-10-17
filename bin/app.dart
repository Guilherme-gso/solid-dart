import 'dart:io';

import 'useCases/CreateUserUseCase/CreateUserController.dart';

void main(List<String> arguments) async {
  stdout.write('Do you want to register? [s/n]');

  var userInput = stdin.readLineSync().toLowerCase();

  if (userInput == 's') {
    stdout.writeln('Please, type our name: ');
    var name = stdin.readLineSync().toString();

    stdout.writeln('Now, type our better email: ');
    var email = stdin.readLineSync().toString();

    stdout.writeln('And finally, type our password: ');
    var password = stdin.readLineSync().toString();

    var createUser = CreateUserController();

    var user = await createUser.handle(name, email, password);

    print(user);

    return;
  }
}
