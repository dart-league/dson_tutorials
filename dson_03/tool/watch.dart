import 'package:build_runner/build_runner.dart';
import 'package:dson/phase.dart';


main() async {
  await watch(new PhaseGroup()
    ..addPhase(
        dsonPhase('dson_03', const ['bin/**.dart'])),
      deleteFilesByDefault: true);
}