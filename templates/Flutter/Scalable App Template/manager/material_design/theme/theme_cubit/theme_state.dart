part of 'theme_cubit.dart';

@immutable
abstract class ThemeState extends Equatable {
  const ThemeState();
  @override
  List<Object> get props => [];
}


class SetTheme extends ThemeState {
  const SetTheme();
}
