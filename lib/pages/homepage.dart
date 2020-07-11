import 'dart:ui';

import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'dart:async'show Future;
import 'package:flutter/services.dart' show rootBundle;


class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController){
      return SingleChildScrollView(
        padding: const EdgeInsets.all(8),
          controller: scrollController,
        child: Center(
            child: Text("HOME",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28,
              fontFamily: "Michroma"),
            ),
          ),

      );
      },
    );

  }

}
