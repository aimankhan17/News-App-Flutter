import 'package:flutter/material.dart';
import 'package:get/get.dart';

getAppDrawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text(
            "News Headline",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            Get.toNamed("/news_headline");
          },
          leading: Icon(
            Icons.contact_page_outlined,
            color: Colors.green,
          ),
        ),
        ListTile(
          title: Text(
            "Search News ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontStyle: FontStyle.italic),
          ),
          onTap: () {
            Get.toNamed("/search_news");
          },
          leading: Icon(
            Icons.search,
            color: Colors.green,
          ),
        ),
        ListTile(
            title: Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontStyle: FontStyle.italic),
            ),
            onTap: () {
              Get.toNamed("/login");
            },
            leading: Icon(Icons.login, color: Colors.green)),
      ],
    ),
  );
}
