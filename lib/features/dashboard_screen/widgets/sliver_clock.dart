import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';

class SliverClock extends StatelessWidget {
  const SliverClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

