import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wattsapp_clon/colors.dart';
import 'package:wattsapp_clon/widgets/chat_List.dart';

import 'package:wattsapp_clon/widgets/contact_list.dart';
import 'package:wattsapp_clon/widgets/web_chat_appbar.dart';
import 'package:wattsapp_clon/widgets/web_profile_bar.dart';
import 'package:wattsapp_clon/widgets/web_search_bar.dart';

class web_screen_layout extends StatelessWidget {
  const web_screen_layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  contact_list(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/b.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                WebChatAppbar(),
                Expanded(
                  child: ChatList(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: dividerColor)),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none)),
                              contentPadding: const EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
