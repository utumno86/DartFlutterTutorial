import 'dart:async';

void main() {
  final bloc = new Bloc();
  
  bloc.email.listen((value)
   {
    print(value);
  });
  
  bloc.emailController.sink.add('MY NEW EMAIL');
  bloc.changeEmail('My NEW EMAIL 2');
}

class Bloc{
  final emailController = StreamController<String>();
  
  get changeEmail => emailController.sink.add;
  get email => emailController.stream;
}