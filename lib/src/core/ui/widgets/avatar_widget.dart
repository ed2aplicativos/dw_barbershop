import 'package:flutter/material.dart';

import '../barbershop_icons.dart';
import '../constants.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 102,
      child: Stack(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstants.avatar,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ColorsConstants.brown,
                  width: 4,
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                BarbershopIcons.addEmployee,
                color: ColorsConstants.brown,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
