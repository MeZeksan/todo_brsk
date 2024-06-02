import 'package:flutter/material.dart';

class SliverTasksList extends StatelessWidget {
  const SliverTasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: Column(
            children: [
              Text('Tasks List',
                style: Theme.of(context).textTheme.headlineLarge,),
              const SizedBox(height: 16,),
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
              const SizedBox(height: 230,)]),
      ),
    );
  }
}

