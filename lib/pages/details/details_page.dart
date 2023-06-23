import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:git/pages/repos/repos_page.dart';

import 'details_binding.dart';
import 'details_controller.dart';

class DetailsPage extends StatefulWidget {
  final String username;

  const DetailsPage({super.key, required this.username});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final DetailsController _controller;

  @override
  void initState() {
    super.initState();

    setupDetails();

    _controller = Get.find();
    _controller.getGithubUser(username: widget.username);
  }

  @override
  void dispose() {
    _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Details'),
      ),
      body: Obx(() {
        return _controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _controller.githubUser == null
                ? const Center(
                    child: Text('Searching...'),
                  )
                : _buildUserInfo();
      }),
    );
  }

  Widget _buildUserInfo() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                _controller.githubUser!.avatarUrl,
                height: 275,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 25),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.emoji_people_rounded,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _controller.githubUser?.name ?? 'No information.',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.short_text_rounded,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text(
                'User Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _controller.githubUser!.login ?? 'No information.',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.description_rounded,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text(
                'Bio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _controller.githubUser!.bio ?? 'No information.',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.grain_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text(
                    'Public Repos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    _controller.githubUser!.publicRepos.toString(),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => ReposPage(user: widget.username),
                    );
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (_) => ReposPage(user: widget.username),
                    //   ),
                    // );
                  },
                  child: const Text('Go to repos page'),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.email_rounded,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _controller.githubUser!.email ?? 'No information.',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.maps_home_work_rounded,
                color: Theme.of(context).primaryColor,
              ),
              title: const Text(
                'Local',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _controller.githubUser!.location ?? 'No information.',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
