import 'package:provider/provider.dart';

import 'controllers/navbar_controllers.dart';

List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<NavigationController>(
    create: (context) => NavigationController(),
  ),
];