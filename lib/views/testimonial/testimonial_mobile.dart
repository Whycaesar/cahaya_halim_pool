import 'dart:developer';

import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/testimonial/testimonial_comment_mobile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class TestimonialMobile extends StatefulWidget {
  @override
  _TestimonialMobileState createState() => _TestimonialMobileState();
}

class _TestimonialMobileState extends State<TestimonialMobile> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'UocaSS2Jxmg',
      params: const YoutubePlayerParams(
        playlist: [
          // 'nPt8bK2gbaU',
          // 'K18cpp_-gP8',
          // 'iLnmTe5Q2Qw',
          // '_WoCV4c6XOE',
          // 'KmzdUe0RSJo',
          // '6jZDSSZZxjQ',
          // 'p2lYr3vM_1w',
          // '7QUtEmBT_-w',
          // '34_PXCzGw1M',
        ],
        startAt: const Duration(minutes: 1, seconds: 24),
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
      ),
    )..listen((value) {
        if (value.isReady && !value.hasPlayed) {
          _controller
            ..hidePauseOverlay()
            ..hideTopMenu();
        }
      });
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      Future.delayed(const Duration(seconds: 1), () {
        _controller.play();
      });
      Future.delayed(const Duration(seconds: 5), () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      });
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return Container(
      child: YoutubePlayerControllerProvider(
        // Passing controller to widgets below.
        controller: _controller,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        "images/homeicon2.jpg",
                        height: 150,
                        width: MediaQuery.of(context).size.width * 1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 400,
                        height: 90,
                        color: Color.fromRGBO(30, 20, 225, 0.2),
                        child: Center(
                            child: Text(
                          "TESTIMONIALS",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 50,
                  ),
                  // color: Colors.deepPurple,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        padding: EdgeInsets.only(
                          bottom: 50,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.only(
                          top: 70,
                        ),
                        child: Text(
                          "What our clients say about us…",
                          style: TextStyle(
                            fontSize: 26,
                            letterSpacing: 2,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 30,
                        ),
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Text(
                              "Testimonial for Pool Maintenance",
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1.4,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: player,
                              // width: MediaQuery.of(context).size.width * 0.7,
                              // child: TestimonialVideo(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // TestimonialDetail(),
                TestimonialCommentMobile(),
                ContactDetailMobile(),
                FooterView()
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class Controls extends StatelessWidget {
  ///
  const Controls();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _space,
          MetaDataSection(),
          _space,
          SourceInputSection(),
          _space,
          PlayPauseButtonBar(),
          _space,
          VolumeSlider(),
          _space,
          PlayerStateSection(),
        ],
      ),
    );
  }

  Widget get _space => const SizedBox(height: 10);
}

class MetaDataSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return YoutubeValueBuilder(builder: (context, value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Text('Title', value.metaData.title),
          const SizedBox(height: 10),
          _Text('Channel', value.metaData.author),
          const SizedBox(height: 10),
          _Text(
            'Playback Quality',
            value.playbackQuality,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _Text('Video Id', value.metaData.videoId),
              const Spacer(),
              const _Text(
                'Speed',
                '',
              ),
              YoutubeValueBuilder(
                builder: (context, value) {
                  return DropdownButton(
                    value: value.playbackRate,
                    isDense: true,
                    underline: const SizedBox(),
                    items: PlaybackRate.all
                        .map(
                          (rate) => DropdownMenuItem(
                            child: Text(
                              '${rate}x',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            value: rate,
                          ),
                        )
                        .toList(),
                    onChanged: context.ytController.setPlaybackRate,
                  );
                },
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _Text extends StatelessWidget {
  final String title;
  final String value;

  const _Text(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value ?? '',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class PlayPauseButtonBar extends StatelessWidget {
  final ValueNotifier<bool> _isMuted = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.skip_previous),
          onPressed: context.ytController.previousVideo,
        ),
        YoutubeValueBuilder(
          builder: (context, value) {
            return IconButton(
              icon: Icon(
                value.playerState == PlayerState.playing
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
              onPressed: value.isReady
                  ? () {
                      value.playerState == PlayerState.playing
                          ? context.ytController.pause()
                          : context.ytController.play();
                    }
                  : null,
            );
          },
        ),
        ValueListenableBuilder<bool>(
          valueListenable: _isMuted,
          builder: (context, isMuted, _) {
            return IconButton(
              icon: Icon(isMuted ? Icons.volume_off : Icons.volume_up),
              onPressed: () {
                _isMuted.value = !isMuted;
                isMuted
                    ? context.ytController.unMute()
                    : context.ytController.mute();
              },
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.skip_next),
          onPressed: context.ytController.nextVideo,
        ),
      ],
    );
  }
}

class PlayerStateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return YoutubeValueBuilder(
      builder: (context, value) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: _getStateColor(value.playerState),
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value.playerState.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }

  Color _getStateColor(PlayerState state) {
    switch (state) {
      case PlayerState.unknown:
        return Colors.grey[700];
      case PlayerState.unStarted:
        return Colors.pink;
      case PlayerState.ended:
        return Colors.red;
      case PlayerState.playing:
        return Colors.blueAccent;
      case PlayerState.paused:
        return Colors.orange;
      case PlayerState.buffering:
        return Colors.yellow;
      case PlayerState.cued:
        return Colors.blue[900];
      default:
        return Colors.blue;
    }
  }
}

class SourceInputSection extends StatefulWidget {
  @override
  _SourceInputSectionState createState() => _SourceInputSectionState();
}

class _SourceInputSectionState extends State<SourceInputSection> {
  TextEditingController _textController;
  String _playlistType;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeValueBuilder(
      builder: (context, value) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                ' -- Choose playlist type',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              value: _playlistType,
              items: PlaylistType.all
                  .map(
                    (type) => DropdownMenuItem(
                      child: Text(
                        type,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      value: type,
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                _playlistType = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            TextField(
              enabled: value.isReady,
              controller: _textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: _hint,
                helperText: _helperText,
                fillColor: Theme.of(context).primaryColor.withAlpha(20),
                filled: true,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).primaryColor,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _textController.clear(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 20 / 6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                _Button(
                  action: 'LOAD',
                  onTap: () {
                    context.ytController.load(_cleanId(_textController.text));
                  },
                ),
                _Button(
                  action: 'CUE',
                  onTap: () {
                    context.ytController.cue(_cleanId(_textController.text));
                  },
                ),
                _Button(
                  action: 'LOAD PLAYLIST',
                  onTap: _playlistType == null
                      ? null
                      : () {
                          context.ytController.loadPlaylist(
                            _textController.text,
                            listType: _playlistType,
                          );
                        },
                ),
                _Button(
                  action: 'CUE PLAYLIST',
                  onTap: _playlistType == null
                      ? null
                      : () {
                          context.ytController.cuePlaylist(
                            _textController.text,
                            listType: _playlistType,
                          );
                        },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  String get _helperText {
    switch (_playlistType) {
      case PlaylistType.search:
        return '"avengers trailer", "nepali songs"';
      case PlaylistType.playlist:
        return '"PLj0L3ZL0ijTdhFSueRKK-mLFAtDuvzdje", ...';
      case PlaylistType.channel:
        return '"pewdiepie", "tseries"';
    }
    return null;
  }

  String get _hint {
    switch (_playlistType) {
      case PlaylistType.search:
        return 'Enter keywords to search';
      case PlaylistType.playlist:
        return 'Enter playlist id';
      case PlaylistType.channel:
        return 'Enter channel name';
    }
    return 'Enter youtube \<video id\> or \<link\>';
  }

  String _cleanId(String source) {
    if (source.startsWith('http://') || source.startsWith('https://')) {
      return YoutubePlayerController.convertUrlToId(source);
    } else if (source.length != 11) {
      _showSnackBar('Invalid Source');
    }
    return source;
  }

  void _showSnackBar(String message) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        behavior: SnackBarBehavior.floating,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController?.dispose();
    super.dispose();
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onTap;
  final String action;

  const _Button({
    Key key,
    @required this.onTap,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onTap == null
          ? null
          : () {
              onTap();
              FocusScope.of(context).unfocus();
            },
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Text(
          action,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class VolumeSlider extends StatelessWidget {
  final _volume = ValueNotifier<int>(100);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          "Volume",
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: _volume,
            builder: (context, volume, _) {
              return Slider(
                inactiveColor: Colors.transparent,
                value: volume.toDouble(),
                min: 0.0,
                max: 100.0,
                divisions: 10,
                label: '$volume',
                onChanged: (value) {
                  _volume.value = value.round();
                  context.ytController.setVolume(volume);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
