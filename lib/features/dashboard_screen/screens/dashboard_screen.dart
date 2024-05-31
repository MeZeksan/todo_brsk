import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';
import 'package:todo_brsk/features/dashboard_screen/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView( //обязательный виджет для Sliver
        slivers: [
            SliverAppBar( //верхнее пространство сливера
              backgroundColor: Color(0xffffd08f),
              floating: true,
              title: Text('Account'),
              expandedHeight: 280,
              //flexibleSpace - это наполнение аппбара, actions немного другое
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle_outlined,
                      size: 80,),
                    Text(
                      'Name LastName',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      '@userID',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        onPressed:() {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF4C27F),
                        ),
                        child: const Text(
                          'Log Out',
                        style: TextStyle(
                          color: Colors.black
                        ),),
                    )
                  ],
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  AnalogClock(
                    width: 120,
                    height: 120,
                    isLive: true,
                    textScaleFactor: 1.5,
                    numberColor: Color(0xffF4C27F),
                    decoration: BoxDecoration(
                        color: Color(0xffF5EFEF),
                        shape: BoxShape.circle),
                    minuteHandColor: Color(0xffF4C27F),
                  )
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}