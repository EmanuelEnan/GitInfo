import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../../app/data/repositories/github_repository.dart';
import 'repos_controller.dart';

setupHome() {
  Get.put(
    ReposController(
      repository: GithubRepository(
        dio: Dio(),
      ),
    ),
  );
}
