import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/data/hotel_bloc/hotel_repository.dart';
import 'package:hotel_app/data/room_bloc/room_repository.dart';
import 'package:hotel_app/models/room.dart';

import '../../models/hotel.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomInitial()) {
    on<LoadRoom>((event, emit) async {
     final roomList = await repository.getRoomsList();
     emit(RoomLoaded(roomList: roomList));
      
    });
  }
  final repository = RoomRepository();

}