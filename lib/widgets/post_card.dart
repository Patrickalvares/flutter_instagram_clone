import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 16,
          ).copyWith(right: 0),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    'https://engineering.unl.edu/images/staff/Kayla-Person.jpg'),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'username',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shrinkWrap: true,
                          children: const ['Apagar']
                              .map((e) => InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 16),
                                      child: Text(e.toString()),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert))
            ],
          ),
        ),
        //IMAGE SECTION
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          child: Image.network(
            'https://www.cvc.com.br/dicas-de-viagem/wp-content/uploads/2022/06/shutterstock_736022743.jpg',
            fit: BoxFit.cover,
          ),
        ),
        //LIKE COMMENT SECTION
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_outlined,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                )),
            Expanded(
                child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_border)),
            ))
          ],
        ),
        //DESCRIPTION AND COMMENTS
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontWeight: FontWeight.w800),
                child: Text(
                  '1.231 Curtidas',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8),
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Hey this is some description to be replaced',
                        ),
                      ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: const Text(
                    'Ver todos os comentarios',
                    style: TextStyle(fontSize: 16, color: secondaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: const Text(
                    '22/12/2021',
                    style: TextStyle(fontSize: 16, color: secondaryColor),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
