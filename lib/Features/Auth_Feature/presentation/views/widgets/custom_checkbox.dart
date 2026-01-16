import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/checkbox_toggle_cubit/checkbox_toggle_cubit.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: BlocBuilder<CheckboxToggleCubit, bool>(
            builder: (context, state) {
              return Checkbox(
                  activeColor: primaryColor,
                  checkColor: Colors.white,
                  side: BorderSide(
                    color: hintsColor,
                  ),
                  value: state,
                  onChanged: (value) {
                    context.read<CheckboxToggleCubit>().toggle(value!);
                  });
            },
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'Remember me',
          style: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
