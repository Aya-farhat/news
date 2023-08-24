import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/Data/Repository/newsrepo.dart';
import 'package:meta/meta.dart';
import 'package:flutter_application_1/Data/Models/newsmodel.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  GetNewsRepo newsRepo = GetNewsRepo();

  getNews() async {
    emit(Loading());

    try {
      await newsRepo.getNews().then((value) {
        if (value != null) {
          emit(Success(response : value));
        } else {
          emit(Failed());
        }
      });
    } catch (error) {
      emit(Failed());
    }
  }
}
