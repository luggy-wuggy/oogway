import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

// ignore: must_be_immutable
class OogwayFavoriteHeart extends StatefulWidget {
  OogwayFavoriteHeart({
    super.key,
    this.isFavorited = false,
    required this.onTap,
  });

  bool isFavorited;
  Future Function(bool) onTap;

  @override
  State<OogwayFavoriteHeart> createState() => _OogwayFavoriteHeartState();
}

class _OogwayFavoriteHeartState extends State<OogwayFavoriteHeart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await widget.onTap(widget.isFavorited);
        setState(() {
          widget.isFavorited = !widget.isFavorited;
        });
      },
      child: Icon(
        widget.isFavorited ? Icons.favorite : Icons.favorite_border_rounded,
        color: OogwayColors.kPrimaryCoralColor,
      ),
    );
  }
}
