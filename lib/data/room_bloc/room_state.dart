part of 'room_bloc.dart';
class RoomState{

}

class RoomInitial extends RoomState{

}

class RoomLoading extends RoomState{}

class RoomLoaded extends RoomState{

  final List<Room> roomList;

  RoomLoaded({required this.roomList});
}
