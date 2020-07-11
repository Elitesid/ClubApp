import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController){
        return SingleChildScrollView(
            padding: const EdgeInsets.all(8),
            controller: scrollController,
            child: Center(
              child: Text("PROJECT HIGHLIGHTS",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
              ),
            )
        );
      },
    );

  }

}
