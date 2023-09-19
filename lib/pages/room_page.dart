import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/components/room_widget.dart';
import 'package:hotel_app/data/room_bloc/room_bloc.dart';
import 'package:hotel_app/models/room.dart';

import '../data/room_bloc/room_repository.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
 final _roomBloc = RoomBloc();
  @override
  void initState() {
    _roomBloc.add(LoadRoom());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Steigenberger Makadi",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF',
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: 
      
      BlocBuilder<RoomBloc, RoomState>(
        bloc: _roomBloc,
        builder: (context, state) {

          if(state is RoomLoaded)
          {
            return ListView.builder(
        itemCount: state.roomList.length,
        itemBuilder: ((context, index) {
          return RoomWidget(room:state.roomList[index]);
        }) );
          }
          return Center(child: CircularProgressIndicator());
        },
      )
      
      
      // ((_roomList==null)||(_roomList!.isEmpty)) ? Center(child: CircularProgressIndicator(),)
      // : ListView.builder(
      //   itemCount: _roomList!.length,
      //   itemBuilder: ((context, index) {
      //     return RoomWidget(room:_roomList![index]);
      //   }) )
    );
  }
 
}
