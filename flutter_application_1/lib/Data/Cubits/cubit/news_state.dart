part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}
final class Loading extends NewsState {}
final class Success extends NewsState {
  final NewsModel response;
  Success({required this.response});
}
final class Failed extends NewsState {}