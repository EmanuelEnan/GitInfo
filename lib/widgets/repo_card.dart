import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String url) async {
  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  } else {
    throw Exception('can not launch the link - $url');
  }
}

Widget repoCard(String txt, String txt1, String webLink) {
  return GestureDetector(
    onTap: () {
      _launchUrl(webLink);
    },
    child: Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(txt),
          Text(txt1),
        ],
      ),
    ),
  );
}
