import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

// autoscroll function - finds widget for globalkey - duration added  
void scrollToProjects(GlobalKey projectsKey) {
  final context = projectsKey.currentContext!;
  Scrollable.ensureVisible(context, duration: const Duration(milliseconds: 500));
}
// function for launching linkedin link - async 
Future<void> linkedin() async {
  const url = "https://www.linkedin.com/in/nazchowdh";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  }
}

// for github link 
Future<void> github() async {
  const url = "https://github.com/nazchow";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  }
}
