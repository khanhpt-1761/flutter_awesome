import 'package:flutterawesome/blocs/base_bloc/base_bloc.dart';
import 'package:flutterawesome/blocs/blocs.dart';
import 'package:flutterawesome/data/repository/repository.dart';
import 'package:flutterawesome/utils/locator.dart';

class HomeBloc extends BaseBloc {
  final HomeRepository homeRepository;

  HomeBloc({HomeRepository homeRepository})
      : this.homeRepository = homeRepository ?? locator<HomeRepository>();

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is GetData) {
      yield* _mapGetData();
    }
  }

  Stream<BaseState> _mapGetData() async* {
    yield LoadingState();
    try {
      //do something
      final data = await homeRepository.getData();
      yield LoadedState<String>(data: data);
    } catch (e) {
      yield ErrorState(data: e);
    }
  }
}

//Event
class GetData extends BaseEvent {}
