import 'package:get/get.dart';

import '../../app/data/models/github_repo_model.dart';

import '../../app/data/repositories/github_repository.dart';

class ReposController extends GetxController {
  final GithubRepository repository;

  final List<GithubRepoModel> _users = <GithubRepoModel>[].obs;
  List<GithubRepoModel> get users => _users;

  final RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  ReposController({required this.repository});

  getGithubRepos({required String username}) async {
    // var response = await repository.getGithubRepos(name: username);

    // users.add(GithubRepoModel.fromJson(response as Map<String, dynamic>));
    // // isLoading = false;
    // update();
    _isLoading.value = true;

    final response = await repository.getGithubRepos(name: username);

    _users.addAll(response);

    _isLoading.value = false;
  }
}
