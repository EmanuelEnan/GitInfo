import 'package:get/get.dart';

import '../../app/data/models/github_user_model.dart';
import '../../app/data/repositories/github_repository.dart';

class DetailsController extends GetxController {
  final GithubRepository repository;

  GithubUserModel? _githubUser;
  GithubUserModel? get githubUser => _githubUser;

  final RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  DetailsController({required this.repository});

  getGithubUser({required String username}) async {
    final result = await repository.getGithubUser(username: username);

    _githubUser = result;

    _isLoading.value = false;
  }
}
