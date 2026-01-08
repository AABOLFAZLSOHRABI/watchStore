import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:watch_store/data/constants.dart';
import 'package:watch_store/data/local/secure_storage_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final SecureStorageService _storage;
  AuthCubit(this._storage) : super(AuthInitial()) {
    _checkToken();
  }

  void _checkToken() async {
    if (await _storage.readToken() != null) {
      emit(LoggedInState());
    } else {
      emit(LoggedOutState());
    }
  }

  final Dio _dio = Dio(
    BaseOptions(
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      followRedirects: true,
      validateStatus: (status) => status! < 500,
    ),
  );

  void sendSMS(String phone) async {
    emit(LoadingState());
    try {
      final response = await _dio.post(
        Endpoints.sendSMS,
        data: FormData.fromMap({"mobile": phone}),
      );
      debugPrint(response.toString());
      if (response.statusCode == 201 || response.statusCode == 200) {
        emit(SMSSentState());
      } else {
        emit(ErrorState());
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(ErrorState());
    }
  }

  Future<void> verifySMSCode(String phone, String smsCode) async {
    emit(LoadingState());
    try {
      final response = await _dio.post(
        Endpoints.checkSMSCode,
        data: FormData.fromMap({"mobile": phone, "code": smsCode}),
      );
      debugPrint(response.toString());
      if (response.statusCode == 201 || response.statusCode == 200) {
        final token = response.data["data"]["token"];
        await _storage.saveToken(token);
        if (response.data["data"]["is_registered"]) {
          emit(LoggedInState());
        } else {
          emit(VerifiedIsNotRegistrationState());
        }
      } else {
        emit(ErrorState());
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(ErrorState());
    }
  }

  void logOut() async {
    await _storage.deleteToken();
    emit(LoggedOutState());
  }
}
