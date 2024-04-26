import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/huma_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';


class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIcomButton(iconColor: Colors.pink, iconData: Icons.favorite, value: video.likes),
        const SizedBox(height: 20),

        _CustomIcomButton(iconData: Icons.remove_red_eye_outlined, value: video.views),

        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIcomButton(iconData: Icons.play_circle_outline, value: 0)
        ),
      ],
    );
  }
}

class _CustomIcomButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIcomButton({
    required this.value, 
    required this.iconData, 
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(iconData, color: color, size: 30)
        ),

        if(value > 0)
        Text( HumanFormats.humanReadbleNumber(value.toDouble()), style: TextStyle( color: color, fontWeight: FontWeight.bold),)
      ],
    );
  }
}