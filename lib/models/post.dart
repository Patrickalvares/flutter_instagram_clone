// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profileImage;
  final likes;

  const Post(
      {required this.description,
      required this.uid,
      required this.postId,
      required this.username,
      required this.datePublished,
      required this.postUrl,
      required this.profileImage,
      required this.likes});

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'postId': postId,
        'username': username,
        'datePublished': datePublished,
        'PostUrl': postUrl,
        'profileImage': profileImage,
        'likes': likes
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        username: snapshot['username'],
        datePublished: snapshot['datePublished'],
        description: snapshot['description'],
        likes: snapshot['likes'],
        postId: snapshot['postId'],
        postUrl: snapshot['postUrl'],
        profileImage: snapshot['profileImage'],
        uid: snapshot['uid']);
  }
}
