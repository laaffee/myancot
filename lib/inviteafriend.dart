import 'package:flutter/material.dart';

class InviteAFriendPage extends StatelessWidget {
  final String appLink =
      'https://www.myancot.com'; // Ganti dengan tautan aplikasi yang sesuai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite a Friend'),
        backgroundColor: Color(0xffA4BE7B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Myancot.png',
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Ajak temanmu untuk bergabung dengan My Ancot!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Bagikan tautan aplikasi kepada temanmu:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            SelectableText(
              appLink,
              style: TextStyle(fontSize: 18, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedIconButton extends StatefulWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const AnimatedIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  _AnimatedIconButtonState createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.9).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) => _controller.reverse());
        widget.onPressed();
      },
      child: ScaleTransition(
        scale: _animation,
        child: widget.icon,
      ),
    );
  }
}
