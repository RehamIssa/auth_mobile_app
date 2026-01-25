import 'package:auth_mobile_app/Core/api/api_consumer.dart';
import 'package:auth_mobile_app/Core/api/endpoints.dart';
import 'package:auth_mobile_app/Core/errors/exceptions.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/data/models/user_model.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/user_cubit/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());

  final ApiConsumer api;
  getUserProfileData() async {
    emit(UserLoading());
    try {
      final response = await api.get(Endpoints.getUserDataEndpoint);
      emit(
        UserSuccess(
          user: UserModel.fromJson(response),
        ),
      );
    } on ServerException catch (e) {
      emit(
        UserFailure(errorMessage: e.errorModel.errorMessage),
      );
    }
  }
}
