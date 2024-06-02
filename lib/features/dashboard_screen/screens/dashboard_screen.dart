import 'package:todo_brsk/features/dashboard_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),//обязательный виджет для Sliver
        slivers: [
            UserSliverAppBar(),
            const SliverClock(),
            SliverTasksList(),
        ],
      ),
    );
  }
}

