import 'package:flutter/material.dart';
import 'package:wattsapp_clon/colors.dart';
import 'package:wattsapp_clon/widgets/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
            radius: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.090,
          ),
          Text(
            info[0]['name'].toString(),
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
