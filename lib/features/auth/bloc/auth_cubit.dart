import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../models/core/failure_model.dart';
import '../../../../../utils/services/local_storage/shared_preferences_helper.dart';
import '../repo/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit({
    required this.authRepository,
    required String? token,
  }) : super(AuthInitial()) {}

  void login() async {
    emit(AuthenticatedUser());
  }

  void signup() async {
    emit(AuthenticatedUser());
  }

  void logOut() async {
    emit(UnauthenticatedUser());
    SharedPreferencesHelper.clearToken();
  }
}
