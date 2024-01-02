import 'package:yaroo/http/http.dart';
import 'package:yaroo/yaroo.dart';
import 'package:zomato/app/providers/provide_views.dart';

final routes = <RouteDefinition>[
  /// Home Page
  Route.handler(HTTPMethod.GET, '/', (req, res) {
    return res.view('index', {'app_name': 'Yaroo', 'app_version': '1.0.0'});
  }),

  /// Auth Routes
  Route.handler(HTTPMethod.GET, '/login', (req, res) => res.view('auth.login')),
  Route.handler(HTTPMethod.GET, '/register', (req, res) => res.view('auth.register')),

  /// Dashboard
  Route.handler(HTTPMethod.GET, '/dashboard', (req, res) => res.view('pages.dashboard')),

  /// Not Found Page
  Route.notFound((req, res) => res.render('404')),
];
