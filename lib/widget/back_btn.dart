import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackBtn extends StatelessWidget {
  final String path;
  const BackBtn({required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(path);
      },
      child: Container(
        width: 104,
        height: 39,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Color(0xff8E84FF)),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
