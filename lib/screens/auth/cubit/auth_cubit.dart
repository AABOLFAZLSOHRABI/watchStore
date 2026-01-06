import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:watch_store/data/constants.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    //
  }
  Dio dio = Dio();
  void sendSMS(String phone) async {
    emit(LoadingState());
    try {
      ;
      await dio.post(Endpoints.sendSMS, data: {"phone": phone}).then((value) {
        debugPrint(value.toString());
        if (value.statusCode == 201) {
          emit(SMSSentState());
        } else {
          emit(ErrorState());
        }
      });
    } catch (e) {
      emit(ErrorState());
    }
  }

  void verifySMSCode(String phone, String smsCode) async {
    emit(LoadingState());
    try {
      ;
      await dio
          .post(Endpoints.checkSMSCode, data: {"phone": phone, "code": smsCode})
          .then((value) {
            debugPrint(value.toString());
            if (value.statusCode == 201) {
              emit(SMSSentState());
            } else {
              emit(ErrorState());
            }
          });
    } catch (e) {
      emit(ErrorState());
    }
  }

  void register(String phone, String name) async {
    emit(LoadingState());
    try {
      await dio
          .post(Endpoints.register, data: {"phone": phone, "name": name})
          .then((value) {
            debugPrint(value.toString());
            if (value.statusCode == 201) {
              emit(VerifiedState());
            } else {
              emit(ErrorState());
            }
          });
    } catch (e) {
      emit(ErrorState());
    }
  }
}
