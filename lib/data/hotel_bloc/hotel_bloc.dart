import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/data/hotel_bloc/hotel_repository.dart';

import '../../models/hotel.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(HotelInitial()) {
    on<LoadHotel>((event, emit) async {
     final hotelList = await repository.getHotelList();
     emit(HotelLoaded(hotelList: hotelList));
      
    });
  }
  final repository = HotelRepository();

}