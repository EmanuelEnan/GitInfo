import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git/pages/details/details_page.dart';
import 'package:git/pages/search/search_binding.dart';
import 'package:git/pages/search/search_controller.dart';
import 'package:git/themes/text_style_base.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../widgets/snackbar_message.dart';
import '../onboarding/onboarding_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = TextEditingController();

  late final SearchingController control;

  @override
  void initState() {
    super.initState();

    setupSearch();
    control = Get.find();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');
    bool firstTimeState = box.get('introduction') ?? true;
    return firstTimeState
        ? const OnboardingScreen()
        : Scaffold(
            appBar: AppBar(
              title: const Text(
                'Search Users',
                style: TextStyleBase.sizeTitle,
              ),
              centerTitle: true,
              actions: [
                Switch(
                    value: control.isDark,
                    onChanged: (state) {
                      print(state);
                      control.changeTheme(state);
                      setState(() {});
                    })
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: control.textController,
                      decoration: const InputDecoration(
                        hintText: 'Enter a name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var user = control.textController.text;
                      user.isNotEmpty
                          ? Get.to(
                              () => DetailsPage(username: user),
                            )
                          : ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar);
                    },
                    child: const Text('Search'),
                  ),
                ],
              ),
            ),
          );
  }
}
