import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughs extends StatefulWidget {
  const FastLaughs({Key? key}) : super(key: key);
  static String id = 'fast-laughs';

  @override
  State<FastLaughs> createState() => _FastLaughsState();
}

class _FastLaughsState extends State<FastLaughs> {
  late VideoPlayerController _videoPlayerController;
  IconData volumeIcon = CupertinoIcons.volume_up;

  void toggleVolume() {
    if (volumeIcon == CupertinoIcons.volume_up) {
      setState(() => volumeIcon = CupertinoIcons.volume_off);
      _videoPlayerController.setVolume(0);
    } else {
      setState(() => volumeIcon = CupertinoIcons.volume_up);
      _videoPlayerController.setVolume(100);
    }
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://drive.google.com/uc?export=download&id=1ypHHsoNMtEPRxH-1geFlH1uPDnwZl5Sq')
      ..initialize().then((_) {
        _videoPlayerController.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _videoPlayerController.value.size.width,
                  height: _videoPlayerController.value.size.height,
                  child: VideoPlayer(_videoPlayerController),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text('The Big Bang Theory',
                          style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(),
                      const Card(
                          color: Colors.black54,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'U/A 18+',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://flxt.tmsimg.com/assets/p185554_b_v10_az.jpg')),
                  ),
                  const SizedBox(height: 10),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sentiment_very_satisfied_rounded,
                          size: 32)),
                  Text('4.54K', style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 10),
                  IconButton(
                      onPressed: () {}, icon: const Icon(CupertinoIcons.add)),
                  Text('My List', style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 10),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.paperplane)),
                  Text('Share', style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 10),
                  IconButton(
                      constraints: const BoxConstraints(),
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.play_arrow_solid)),
                  Text('Play', style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child:
                    IconButton(onPressed: toggleVolume, icon: Icon(volumeIcon)),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.pause();
  }
}
