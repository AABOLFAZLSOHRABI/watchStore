import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:watch_store/data/constants.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    emit(LoggedOutState());
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

  void verifySMSCode(String phone, String smsCode) async {
    emit(LoadingState());
    try {
      final response = await _dio.post(
        Endpoints.checkSMSCode,
        data: FormData.fromMap({"mobile": phone, "code": smsCode}),
      );
      debugPrint(response.toString());
      if (response.statusCode == 201 || response.statusCode == 200) {
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

  void register(String phone, String name) async {
    emit(LoadingState());
    try {
      final response = await _dio.post(
        Endpoints.register,
        data: FormData.fromMap({"mobile": phone, "name": name}),
      );
      debugPrint(response.toString());
      if (response.statusCode == 201 || response.statusCode == 200) {
        emit(LoggedInState());
      } else {
        emit(ErrorState());
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(ErrorState());
    }
  }
}
