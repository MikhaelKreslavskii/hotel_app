import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/models/room.dart';
import 'dart:convert';


class RoomRepository {
  

  RoomRepository();
  Future<List<Room>> getRoomsList() async {
    List<Room> roomList = [];
    try {
      final response = await Dio()
          .get("https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd");
      log('response ${response.data}');
      final data = response.data["rooms"] as List;
      roomList = data.map((room) => Room.fromJson(room)).toList();
        print(roomList.length);
        return roomList;
      
    } catch (e) {
      log('$e');
      throw Exception();
    }

    
  }
}
