import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

import '../cubit/menu_request_state.dart';
import '../cubit/muenu_request_cubit.dart';



class MenuRequest extends StatelessWidget {
  const MenuRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuRequestCubit, MenuRequestState>(
      builder: (context, state) {

        final selectedValue = state is MenuRequestSelected
            ? state.selectedValue
            : null;

        return DropdownMenu<String>(
          initialSelection: selectedValue,

          onSelected: (value) {
            if (value != null) {
              context.read<MenuRequestCubit>().selectItem(value);
            }
          },

          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(color: AppColors.primary2Color),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide(color: AppColors.primary2Color),
            ),
            fillColor: AppColors.lightBlue,
            filled: true,
            hintStyle: AppStyle.meduimBlack14,
          ),

          menuStyle: MenuStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.white),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
            ),
          ),

          width: double.infinity,
          hintText: "List Request",

          dropdownMenuEntries: const [
            DropdownMenuEntry(value: "annual", label: "Annual Leave"),
            DropdownMenuEntry(value: "casual", label: "Casual Leave"),
            DropdownMenuEntry(value: "sick", label: "Sick Leave"),
            DropdownMenuEntry(value: "maternity", label: "Maternity Leave"),
            DropdownMenuEntry(value: "marriage", label: "Marriage Leave"),
            DropdownMenuEntry(value: "bereavement", label: "Bereavement Leave"),
            DropdownMenuEntry(value: "late", label: "Late Permission"),
            DropdownMenuEntry(value: "early", label: "Early Leave Permission"),
            DropdownMenuEntry(value: "break", label: "Break Permission"),
          ],
        );
      },
    );
  }
}

