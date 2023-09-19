import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../models/booking.dart';

class BookingRepository
{
  Future<Booking> getBooking() async {
    Booking? booking;
    
      final response = await Dio()
          .get("https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8");
      log('response ${response.data}');
      final data = response.data as Map<String, dynamic>;
      booking = Booking.fromJson(data);
      ///  print(roomList.length);
      
   

    return booking;
  }
}