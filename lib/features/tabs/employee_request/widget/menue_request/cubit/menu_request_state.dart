abstract class MenuRequestState {}

class MenuRequestInitial extends MenuRequestState {}
class MenuRequestSelected extends MenuRequestState {
  final String selectedValue;
  MenuRequestSelected(this.selectedValue);
}