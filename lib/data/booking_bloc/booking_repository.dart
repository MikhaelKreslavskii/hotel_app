import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../models/booking.dart';

class BookingRepository
{
  Future<Booking> getBooking() async {
    Booking? booking;
    
      try {
  final response = await Dio()
      .get("https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d");
  log('response ${response.data}');
  final data = response.data as Map<String, dynamic>;
  booking = Booking.fromJson(data);
  ///  print(roomList.length);
  
     
  
      return booking;
}  catch (e) {
  throw Exception();
  // TODO
}
  }
}