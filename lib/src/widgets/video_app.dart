import 'package:flutter/material.dart';
import '../models/video_info.dart';
import 'video_list.dart';

class VideoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  var videos = <VideoInfo>[
    VideoInfo(
      title: 'AajTak Live',
      coverImageUrl: 'https://pbs.twimg.com/profile_images/1179039747273940992/ZGQ_ibsP.jpg',
      videoImageUrl:
          'https://aajtaklive-amd.akamaized.net/hls/live/2014416/aajtak/aajtaklive/aajtak_2/chunklist.m3u8',
    ),
    VideoInfo(
      title: 'Zee News',
      coverImageUrl:
          'https://i.ytimg.com/vi/8AXFS1li6Nk/hqdefault.jpg',
      videoImageUrl:
          'https://zmcl-live.akamaized.net/zeenewsclean_mbr/tracks-v3a1/mono.m3u8',
    ),
    VideoInfo(
      title: 'ABP News',
      coverImageUrl:
          'https://samachar4media.gumlet.com/53991-ABP-News.jpg',
      videoImageUrl:
          'https://abp-i.akamaihd.net/hls/live/765529/abphindi/master_234.m3u8',
    ), VideoInfo(
      title: 'NDTV 24x7',
      coverImageUrl:
          'https://i.ytimg.com/vi/AFNUeUed8Ro/maxresdefault_live.jpg',
      videoImageUrl:
          'https://ndtv24x7elemarchana.akamaized.net/hls/live/2003678/ndtv24x7/masterp_480p@3.m3u8',
    ),VideoInfo(
      title: 'DD News',
      coverImageUrl:
          'https://www.newsclick.in/sites/default/files/2019-01/dd.PNG',
      videoImageUrl:
          'https://nicls1-lh.akamaihd.net/i/ddnews_1@409133/index_2_av-p.m3u8?sd=10&rebase=on',
    ),VideoInfo(
      title: 'Breaking-News',
      coverImageUrl:
          'https://www.newsfirst.lk/wp-content/uploads/2019/04/Breaking-News-Image_850x460_acf_cropped_850x460_acf_cropped_850x460_acf_cropped.jpg',
      videoImageUrl:
          'https://5b44cf20b0388.streamlock.net:8443/live/ngrp:live_all/playlist.m3u8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoList(
        videos: videos,
        onVideoAdded: (video) {
          setState(() => videos.add(video));
        },
        onVideoEdited: (video, index) {
          setState(() => videos[index] = video);
        },
      ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
      ),
    );
  }
}
