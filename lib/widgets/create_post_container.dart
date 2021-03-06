import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12, 0),
      height: 100,
      color: Colors.orange,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl, isActive: true),
              const SizedBox(width: 8.0),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your Mind?'),
              ))
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: () => print('Live'),
                  icon: const Icon(Icons.videocam, color: Colors.red),
                  label: const Text('Live')),
              const VerticalDivider(width: 8.0),
              TextButton.icon(
                  onPressed: () => print(''),
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  label: const Text('Photo')),
              const VerticalDivider(width: 8.0),
              TextButton.icon(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: const Text('Room')),
            ],
          )
        ],
      ),
    );
  }
}
