import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:wattsapp_clon/colors.dart";
import "package:wattsapp_clon/widgets/info.dart";
import "package:wattsapp_clon/widgets/mobile_chat_screen.dart";

class contact_list extends StatelessWidget {
  const contact_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, Index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => MobileChatScreen()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(
                        info[Index]['name'].toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          info[Index]['message'].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          info[Index]['profilePic'].toString(),
                        ),
                      ),
                      trailing: Text(
                        info[Index]['time'].toString(),
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85,
                ),
              ],
            );
          }),
    );
  }
}
