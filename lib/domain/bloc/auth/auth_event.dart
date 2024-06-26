import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class SignInEvent extends AuthEvent{
  final String email;
  final String password;

  SignInEvent(this.email,this.password);
  @override
  List<Object?> get props => [email,password];
}

class SignUpEvent extends AuthEvent{
  final String email;
  final String password;
  final String displayName;
  SignUpEvent(this.email,this.password,this.displayName);
  @override
  List<Object?> get props => [email,password,displayName];
}

class SignOutEvent extends AuthEvent{}