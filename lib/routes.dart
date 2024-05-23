
import 'package:go_router/go_router.dart';
import 'package:todo_brsk/features/autorization_screen/screens/view.dart';
import 'package:todo_brsk/features/registration_screen/screens/view.dart';
import 'package:todo_brsk/features/welcome_screen/screens/view.dart';

final _router = GoRouter(
  initialLocation: '/', //откуда идет старт приложения
  routes: [
    GoRoute(path: '/',  //обязательный маршрут
        builder: (context,state)=> const WelcomeScreen()
    ),
    GoRoute(
      path: '/autorization_page',
      builder: (context, state) =>const AutorizationScreen(),
    ),
    GoRoute(path: '/registration_page',
        builder: (context,state)=>const RegistrationScreen()
    ),

  ],
);


GoRouter get router {return _router;}