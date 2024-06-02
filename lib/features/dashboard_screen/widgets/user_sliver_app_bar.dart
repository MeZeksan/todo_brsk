import 'package:flutter/material.dart';

class UserSliverAppBar extends StatelessWidget {
  const UserSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar( //верхнее пространство сливера
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
    );
  }
}

