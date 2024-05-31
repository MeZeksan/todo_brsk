
import 'package:go_router/go_router.dart';
import 'package:todo_brsk/features/autorization_screen/screens/view.dart';
import 'package:todo_brsk/features/registration_screen/screens/view.dart';
import 'package:todo_brsk/features/welcome_screen/screens/view.dart';
import 'features/dashboard_screen/screens/dashboard_screen.dart';

final _router = GoRouter(
  initialLocation: '/dashboard_page', //откуда идет старт приложения
  routes: [
    GoRoute(path: '/',  //обязательный маршрут
        builder: (context,state)=> const WelcomeScreen()
    ),
    GoRoute(
      path: '/autorization_page',
      builder: (context, state) =>const AuthorizationScreen(),
    ),
    GoRoute(path: '/registration_page',
        builder: (context,state)=>const RegistrationScreen()
    ),
    GoRoute(path: '/dashboard_page',
    builder: (context,state) =>const DashboardScreen())
  ],
);


GoRouter get router {return _router;}