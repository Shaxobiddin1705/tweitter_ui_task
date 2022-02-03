import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tweitter_ui_task/models/action_username_list.dart';
import 'package:tweitter_ui_task/models/twit_context.dart';
import 'package:tweitter_ui_task/models/twit_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TwitModel> items = [
    TwitModel(actionType: "liked", actionIcon: const Icon(CupertinoIcons.suit_heart_fill, color: Colors.grey, size: 16,), contentImage: "assets/images/context_img_0.jpg", actionUserNameList: ActionUserNameList.actionUserNameList0, userImage: "assets/images/user_img_0.jpg", userName: "@maxjacobson", nickName: "Maximmilian", tweetTime: "2h", textContent: TwitContext.twitContext0, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "ReTweeted", actionIcon: const Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.grey,size: 16,), actionUserNameList: ActionUserNameList.actionUserNameList1 ,userImage: "assets/images/user_img_1.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext1, commentNumber: 120, retweetNumber: 38, likeNumber: 500),
    TwitModel(actionType: "liked", actionIcon:  const Icon(CupertinoIcons.suit_heart_fill, color: Colors.grey,size: 16,), actionUserNameList: ActionUserNameList.actionUserNameList2 ,userImage: "assets/images/user_img_2.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext2, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "ReTweeted", actionIcon: const Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.grey,size: 16,), contentImage: "assets/images/context_img_1.jpg", actionUserNameList: ActionUserNameList.actionUserNameList3 ,userImage: "assets/images/user_img_3.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext3, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "liked", actionIcon: const Icon(CupertinoIcons.suit_heart_fill, color: Colors.grey,size: 16,),  contentImage: "assets/images/context_img_2.jpg", actionUserNameList: ActionUserNameList.actionUserNameList4 ,userImage: "assets/images/user_img_4.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext4, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "ReTweeted", actionIcon: const Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.grey,size: 16,), actionUserNameList: ActionUserNameList.actionUserNameList5 ,userImage: "assets/images/user_img_5.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext5, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "liked", actionIcon: const Icon(CupertinoIcons.suit_heart_fill, color: Colors.grey,size: 16,), actionUserNameList: ActionUserNameList.actionUserNameList6 ,userImage: "assets/images/user_img_6.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext6, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
    TwitModel(actionType: "ReTweeted", actionIcon: const Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.grey,size: 16,), contentImage: "assets/images/context_img_3.jpg", actionUserNameList: ActionUserNameList.actionUserNameList7 ,userImage: "assets/images/user_img_7.jpg", userName: "@mis_potter", nickName: "Tabitha Potter", tweetTime: "14h", textContent: TwitContext.twitContext7, commentNumber: 46, retweetNumber: 18, likeNumber: 363),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile_img.jpg"),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(top: 8, right: 5),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: Image.asset("assets/images/twitter_logo.png"),
        actions: [
          Image.asset("assets/images/star_logo.png")
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: items.length,
            itemBuilder: (context, index) {
              return twitPost(index);
            }
        ),
      )
    );
  }

  Widget twitPost(int index) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 0.2, color: Colors.grey.shade400), bottom: BorderSide(width: 0.2, color: Colors.grey.shade400)),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        items[index].actionIcon as Widget,
                        const SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.topRight,
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            // radius: 20,
                            minRadius: 20,
                            backgroundImage: AssetImage(items[index].userImage),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: items[index].actionType == "liked" ?
                        Text(items[index].actionUserNameList!.length >=2 ? "${items[index].actionUserNameList![0].toString()} and ${items[index].actionUserNameList![1].toString()} liked" : "${items[index].actionUserNameList!.last.toString()} liked", style: const TextStyle(color: Colors.blueGrey),)
                            :Text("${items[index].actionUserNameList![0].toString()} and ${items[index].actionUserNameList![1].toString()} Retweeted" , style: const TextStyle(color: Colors.blueGrey),),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Row(
                                children: [
                                  Text(items[index].nickName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black87),),
                                  const SizedBox(width: 5,),
                                  Text(items[index].userName, style: TextStyle(color: const Color(0x00687684).withOpacity(1)),),
                                  const SizedBox(width: 5,),
                                  Container(
                                    height: 2.8,
                                    width: 2.8,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                  Text(items[index].tweetTime, style: const TextStyle(color: Colors.blueGrey),)
                                ],
                              ),
                            ),
                            Icon(CupertinoIcons.chevron_down, size: 15, color: const Color(0x00687684).withOpacity(1),)
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: Text(items[index].textContent, style: TextStyle(color: const Color(0x00141619).withOpacity(1)),),
                      ),
                      const SizedBox(height: 10,),
                      (items[index].contentImage != null) ? Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(items[index].contentImage.toString(),),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                      ) : SizedBox(height: 0,),
                      SizedBox(height: (items[index].contentImage != null) ? 10 : 0,),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.chat_bubble, size: 16, color: Colors.blueGrey,),
                                    const SizedBox(width: 4,),
                                    Text(items[index].commentNumber.toString()),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.arrow_2_squarepath, size: 16, color: Colors.blueGrey,),
                                    const SizedBox(width: 4,),
                                    Text(items[index].retweetNumber.toString()),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Row(
                                  children: [
                                    const Icon(CupertinoIcons.heart, size: 16, color: Colors.blueGrey,),
                                    const SizedBox(width: 4,),
                                    Text(items[index].likeNumber.toString()),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/share_icon.png", width: 14,),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

}
