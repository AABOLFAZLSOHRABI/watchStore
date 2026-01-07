part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoadingState extends AuthState {}

final class SMSSentState extends AuthState {}

final class ErrorState extends AuthState {}

final class VerifiedIsRegistrationState extends AuthState {}

final class VerifiedIsNotRegistrationState extends AuthState {}

final class LoggedInState extends AuthState {}

final class LoggedOutState extends AuthState {}
