import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxToggleCubit extends Cubit<bool> {
  CheckboxToggleCubit() : super(false);

  void toggle(bool isChecked) {
    emit(isChecked);
  }
}
