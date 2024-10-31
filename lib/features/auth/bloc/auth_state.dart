part of 'auth_cubit.dart';

enum AuthCubitStatus { unknown, authenticated, unauthenticated }

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class ErrorAuth extends AuthState {
  final Failure failure;

  const ErrorAuth({required this.failure});

  @override
  List<Object> get props => [];
}

class AuthenticatedUser extends AuthState {
  const AuthenticatedUser();

  @override
  List<Object> get props => [];
}

class UnauthenticatedUser extends AuthState {
  const UnauthenticatedUser();

  @override
  List<Object> get props => [];
}
