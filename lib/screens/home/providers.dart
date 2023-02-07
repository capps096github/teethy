//
import '../../teethy_exporter.dart';

final navbarIndexProvider = StateProvider<int>((ref) {
  // by default, the navbar index is 1, i.e home page
  return 0;
});
