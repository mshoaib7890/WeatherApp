part of 'weather_bloc_bloc.dart';

@immutable
sealed class WeatherBlocState {}

final class WeatherBlocInitial extends WeatherBlocState {}

final class WeatherBlocLoading extends WeatherBlocState {}

final class WeatherBlocFailure extends WeatherBlocState {}

final class WeatherBlocSucess extends WeatherBlocState {
  final Weather weather;

  WeatherBlocSucess(this.weather);

  @override
  List<Object> get props => [weather];
}
