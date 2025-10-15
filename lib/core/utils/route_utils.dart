import 'package:streptopelia_orientalis/presentation/routes/app_routes.dart';

String homeIndexToPath(int index) {
  switch (index) {
    case 0:
      return RoutePath.home;
    case 1:
      return RoutePath.summary;
    default:
      return RoutePath.home;
  }
}

int pathToHomeIndex(String path) {
  if (path == RoutePath.home) return 0;
  if (path == RoutePath.summary) return 1;
  return 0;
}
