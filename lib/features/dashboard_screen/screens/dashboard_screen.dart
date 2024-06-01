import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_clock/one_clock.dart';
import 'package:todo_brsk/features/dashboard_screen/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),//обязательный виджет для Sliver
        slivers: [
            SliverAppBar( //верхнее пространство сливера
              backgroundColor: Color(0xffffd08f),
              pinned: true,
              title: Text('Account'),
              expandedHeight: 280,
              //flexibleSpace - это наполнение аппбара, actions немного другое
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60,),
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
                    const SizedBox(height: 10,),
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
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children:[
                  const SizedBox(height: 30,),
                  const AnalogClock(
                    width: 120,
                    height: 120,
                    isLive: true,
                    textScaleFactor: 1.5,
                    showDigitalClock: false,
                    numberColor: Color(0xffF4C27F),
                    decoration: BoxDecoration(
                        color: Color(0xffF5EFEF),
                        shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color:Color(0xffF4C27F),
                          blurRadius: 9,
                          offset:Offset(0, 3)
                      )
                    ]),
                    minuteHandColor: Color(0xffF4C27F),
                  ),
                  const SizedBox(height: 30,),
                  Text('Good Afternoon',
                  style: Theme.of(context).textTheme.labelSmall,)
                  ]
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
              child: Column(
                children: [
                  Text('Tasks List',
                  style: Theme.of(context).textTheme.headlineLarge,),
                  SizedBox(height: 16,),
                  Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                      color:Colors.grey,
                      blurRadius: 9,
                      offset:Offset(0, 3)
                      )
                  ]),
                ),
                  SizedBox(height: 230,)]),
            ),
          ),
          
        ],
      ),
    );
  }
}

