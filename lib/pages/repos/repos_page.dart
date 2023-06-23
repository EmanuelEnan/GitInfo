import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git/widgets/repo_card.dart';

import 'repos_binding.dart';
import 'repos_controller.dart';

enum ViewType { list, grid }

class ReposPage extends StatefulWidget {
  final String user;
  const ReposPage({super.key, required this.user});

  @override
  State<ReposPage> createState() => _ReposPageState();
}

class _ReposPageState extends State<ReposPage> {
  late final ReposController _controller;

  ViewType _viewType = ViewType.list;

  int _crossAxisCount = 2;
  double _aspectRatio = 1.5;

  @override
  void initState() {
    super.initState();

    setupHome();

    _controller = Get.find();
    _controller.getGithubRepos(username: widget.user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Github Repos'),
        actions: [
          IconButton(
            icon: Icon(_viewType == ViewType.grid
                ? Icons.list
                : Icons.grid_on_outlined),
            onPressed: () {
              if (_viewType == ViewType.grid) {
                _crossAxisCount = 2;
                _aspectRatio = 1.5;
                _viewType = ViewType.list;
              } else {
                _crossAxisCount = 1;
                _aspectRatio = 5;
                _viewType = ViewType.grid;
              }
              setState(() {});
            },
          ),
        ],
      ),
      body: Obx(() {
        return _controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : _controller.users.isEmpty
                ? const Center(child: Text('No repos found.'))
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: _crossAxisCount,
                        childAspectRatio: _aspectRatio),
                    itemCount: _controller.users.length,
                    itemBuilder: (BuildContext ctx, index) {
                      final item = _controller.users[index];
                      return repoCard(
                          item.name, item.description, item.htmlUrl);
                    });
        // ListView.separated(
        //     separatorBuilder: (context, index) => const Divider(),
        //     physics: const BouncingScrollPhysics(),
        //     itemCount: _controller.users.length,
        //     itemBuilder: (context, index) {
        //       final item = _controller.users[index];
        //       return repoCard(
        //           item.name, item.description, item.htmlUrl);
        //     },
        //   );
      }),
    );
  }
}
