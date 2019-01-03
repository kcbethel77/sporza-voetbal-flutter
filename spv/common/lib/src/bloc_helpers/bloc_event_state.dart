import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:common_spv/src/bloc_helpers/bloc_provider.dart';

abstract class BlocEvent {}

abstract class BlocState {}

abstract class BlocEventStateBase<BlocEvent, BlocState> implements BlocBase {
  PublishSubject<BlocEvent> _eventController = PublishSubject<BlocEvent>();
  BehaviorSubject<BlocState> _stateController = BehaviorSubject<BlocState>();

  Function(BlocEvent) get emitEvent => _eventController.sink.add;

  Stream<BlocState> get state => _stateController.stream;

  BlocState get lastState => _stateController.value;

  Stream<BlocState> eventHandler(BlocEvent event, BlocState currentState);

  final BlocState initialState;

  BlocEventStateBase({@required this.initialState}) {
    _eventController.listen((BlocEvent event) {
      BlocState currentState = lastState ?? initialState;
      eventHandler(event, currentState).forEach((BlocState newState) {
        _stateController.sink.add(newState);
      });
    });
  }

  @override
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
