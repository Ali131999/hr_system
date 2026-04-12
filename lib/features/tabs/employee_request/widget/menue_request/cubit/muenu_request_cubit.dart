import 'package:flutter_bloc/flutter_bloc.dart';

import 'menu_request_state.dart';

class MenuRequestCubit extends Cubit<MenuRequestState> {
  MenuRequestCubit() : super(MenuRequestInitial());

  void selectItem(String value) {
    emit(MenuRequestSelected(value));
  }
}