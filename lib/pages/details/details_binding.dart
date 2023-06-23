import 'package:dio/dio.dart';

import 'package:get/instance_manager.dart';

import '../../app/data/repositories/github_repository.dart';
import 'details_controller.dart';

setupDetails() {
  Get.put(
    DetailsController(
      repository: GithubRepository(
        dio: Dio(),
      ),
    ),
  );
}

// class DataBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(
//       () => DetailsController(
//         repository: GithubRepository(
//           dio: Dio(),
//         ),
//       ),
//     );
//   }
// }
