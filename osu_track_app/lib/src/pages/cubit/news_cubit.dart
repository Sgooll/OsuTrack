import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../requests/requests.dart';
import '../../utils/secure_storage.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());


  Future<void> loadNews() async {
    try{
      await getTokenAsOwner(); // receive news object
      var currentNews = await getNews((await UserSecureStorage.getTokenFromStorage())!); // request news
      getRanking((await UserSecureStorage.getTokenFromStorage())!);
      emit(NewsLoadedState(currentNews)); // activate newsLoaded state
    }catch (e){
      emit(NewsErrorState('Failed News Load'));
    }
  }

  Future<void> reloadNews() async {
    emit(NewsInitial());
  }

}
