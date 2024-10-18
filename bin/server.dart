
import 'package:shelf_hotreload/shelf_hotreload.dart';
import 'bootstrap.dart';

void main() async {
  withHotreload(() => createServer());
}

