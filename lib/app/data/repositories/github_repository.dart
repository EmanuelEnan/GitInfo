import 'package:dio/dio.dart';
import 'package:git/utils/constants.dart';

import '../models/github_repo_model.dart';
import '../models/github_user_model.dart';

class GithubRepository {
  final Dio dio;

  GithubRepository({required this.dio});

  Future<List<GithubRepoModel>> getGithubRepos({required String name}) async {
    final result = await dio.get('$apiBaseUrl/users/$name/repos');

    final List<GithubRepoModel> users = [];

    if (result.statusCode == 200) {
      print(result.statusCode);
      print(result.data);
      result.data
          .map((item) => users.add(GithubRepoModel.fromMap(item)))
          .toList();
    }

    return users;
  }

  Future<GithubUserModel> getGithubUser({required String username}) async {
    final result = await dio.get('$apiBaseUrl/users/$username');

    late GithubUserModel githubUser;

    if (result.statusCode == 200) {
      print(result.data);
      githubUser = GithubUserModel.fromMap(result.data);
    }

    return githubUser;
  }
}
