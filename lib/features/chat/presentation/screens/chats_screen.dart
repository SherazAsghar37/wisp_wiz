import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/colours.dart';
import 'package:wisp_wiz/core/common/widgets/buttons/app_icon_button.dart';
import 'package:wisp_wiz/core/common/widgets/exports.dart';
import 'package:wisp_wiz/core/common/widgets/text/app_text.dart';
import 'package:wisp_wiz/features/chat/data/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  final String image;
  const ChatsScreen({super.key, required this.image});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;

  // Sample data for chat list
  final List<ChatModel> _chats = [
    ChatModel(
      name: 'John Doe',
      lastMessage: 'Hey, how are you doing?',
      time: '10:30 AM',
      imageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
      unreadCount: 3,
    ),
    ChatModel(
      name: 'Jane Smith',
      lastMessage: 'The meeting is scheduled for tomorrow',
      time: '9:15 AM',
      imageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
      unreadCount: 0,
    ),
    ChatModel(
      name: 'Alex Johnson',
      lastMessage: 'Did you check the latest update?',
      time: 'Yesterday',
      imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
      unreadCount: 1,
    ),
    ChatModel(
      name: 'Sarah Williams',
      lastMessage: 'Thanks for your help!',
      time: 'Yesterday',
      imageUrl: 'https://randomuser.me/api/portraits/women/4.jpg',
      unreadCount: 0,
    ),
    ChatModel(
      name: 'Mike Brown',
      lastMessage: 'Let\'s meet up this weekend',
      time: 'Wed',
      imageUrl: 'https://randomuser.me/api/portraits/men/5.jpg',
      unreadCount: 0,
    ),
    // Add more chat items to make the list scrollable
    ChatModel(
      name: 'Emma Wilson',
      lastMessage: 'The presentation looks great!',
      time: 'Tue',
      imageUrl: 'https://randomuser.me/api/portraits/women/6.jpg',
      unreadCount: 2,
    ),
    ChatModel(
      name: 'James Taylor',
      lastMessage: 'I\'ll call you later',
      time: 'Mon',
      imageUrl: 'https://randomuser.me/api/portraits/men/7.jpg',
      unreadCount: 0,
    ),
    ChatModel(
      name: 'Olivia Davis',
      lastMessage: 'Don\'t forget about our appointment',
      time: 'Sun',
      imageUrl: 'https://randomuser.me/api/portraits/women/8.jpg',
      unreadCount: 0,
    ),
    ChatModel(
      name: 'Robert Miller',
      lastMessage: 'Check out this new app',
      time: 'Sat',
      imageUrl: 'https://randomuser.me/api/portraits/men/9.jpg',
      unreadCount: 0,
    ),
    ChatModel(
      name: 'Sophia Anderson',
      lastMessage: 'Happy birthday!',
      time: 'Fri',
      imageUrl: 'https://randomuser.me/api/portraits/women/10.jpg',
      unreadCount: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 150.0,
            backgroundColor: context.theme.scaffoldBackgroundColor,
            automaticallyImplyLeading: false,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final isCollapsed =
                    constraints.maxHeight <= kToolbarHeight + 70;

                return Stack(
                  children: [
                    FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.only(
                        left: 16.0,
                        // bottom: 80.0,
                      ),
                      collapseMode: CollapseMode.parallax,
                      expandedTitleScale: 1.7,
                      centerTitle: false,

                      title:
                          isCollapsed
                              ? SizedBox() // fades away
                              : SizedBox(
                                height: 40.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 23),
                                      constraints: BoxConstraints(
                                        maxHeight: 40.h,
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          AppSizes.borderRadiusMd / 1.1,
                                        ),
                                      ),
                                      child: Image.asset(
                                        widget.image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 23),
                                      constraints: BoxConstraints(
                                        maxHeight: 40.h,
                                      ),
                                      child: Column(
                                        children: [
                                          AppText("John Doe"),
                                          AppText("John Doe"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                    ),

                    // Positioned(
                    //   left: 0,
                    //   top: MediaQuery.of(context).padding.top,
                    //   child:
                    //       isCollapsed
                    //           ? SizedBox() // fades away
                    //           : Row(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Container(
                    //                 constraints: BoxConstraints(
                    //                   maxHeight: 40.h,
                    //                 ),
                    //                 clipBehavior: Clip.antiAlias,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(
                    //                     AppSizes.borderRadiusMd * 1.8,
                    //                   ),
                    //                 ),
                    //                 child: Image.asset(
                    //                   widget.image,
                    //                   fit: BoxFit.contain,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    // ),
                    // Overlay actions: always visible
                    Positioned(
                      right: 0,
                      top: MediaQuery.of(context).padding.top,
                      child: Row(
                        children: [
                          AppIconButton(
                            onPressed: () {},
                            icon: Icons.search,
                            backgroundColor: Colours.transparent,
                          ),
                          AppIconButton(
                            backgroundColor: Colours.transparent,
                            onPressed: () {},
                            icon: Icons.more_vert,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Container(
                height: 48.0,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AppText(
                  "Chat",
                  style: context.theme.textTheme.headlineLarge,
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ChatItemWidget(chat: _chats[index]);
            }, childCount: _chats.length),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Groups'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// Model class for chat items

// Widget for displaying individual chat items
class ChatItemWidget extends StatelessWidget {
  final ChatModel chat;

  const ChatItemWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chat.imageUrl),
        radius: 25,
      ),
      title: Text(
        chat.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        chat.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.grey[600], fontSize: 14),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            chat.time,
            style: TextStyle(
              color:
                  chat.unreadCount > 0
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          if (chat.unreadCount > 0)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                chat.unreadCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        // Navigate to chat detail screen
      },
    );
  }
}
