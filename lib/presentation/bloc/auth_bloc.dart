import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthEvent {}

class AuthLoginEvent extends AuthEvent {}

class AuthLogoutEvent extends AuthEvent {}

abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {}

class Unauthenticated extends AuthState {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) {
      emit(Authenticated());
    });

    on<AuthLogoutEvent>((event, emit) {
      emit(Unauthenticated());
    });
  }
}
