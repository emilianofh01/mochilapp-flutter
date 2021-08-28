import 'package:flutter/material.dart';

class FacebookPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      child: ClipPath(
        clipper: FacebookClipper(),
        child: Container(
          color: Color.fromRGBO(66, 103, 178, 1),
        ),
      ),
    );
  }
}

class GooglePath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: Google4Clipper(),
          child: Container(
            color: Color.fromRGBO(66, 133, 244, 1),
          ),
        ),
        ClipPath(
          clipper: Google2Clipper(),
          child: Container(
            color: Color.fromRGBO(251, 188, 5, 1),
          ),
        ),
        ClipPath(
          clipper: Google1Clipper(),
          child: Container(
            color: Color.fromRGBO(241, 67, 54, 1),
          ),
        ),
        ClipPath(
          clipper: Google3Clipper(),
          child: Container(
            color: Color.fromRGBO(52, 168, 83, 1),
          ),
        ),
      ],
    );
  }
}

class FacebookClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 156;
    final double _yScaling = size.height / 156;
    path.lineTo(89.584 * _xScaling, 155.139 * _yScaling);
    path.cubicTo(
      89.584 * _xScaling,
      155.139 * _yScaling,
      89.584 * _xScaling,
      84.378 * _yScaling,
      89.584 * _xScaling,
      84.378 * _yScaling,
    );
    path.cubicTo(
      89.584 * _xScaling,
      84.378 * _yScaling,
      113.32600000000001 * _xScaling,
      84.378 * _yScaling,
      113.32600000000001 * _xScaling,
      84.378 * _yScaling,
    );
    path.cubicTo(
      113.32600000000001 * _xScaling,
      84.378 * _yScaling,
      116.888 * _xScaling,
      56.793 * _yScaling,
      116.888 * _xScaling,
      56.793 * _yScaling,
    );
    path.cubicTo(
      116.888 * _xScaling,
      56.793 * _yScaling,
      89.584 * _xScaling,
      56.793 * _yScaling,
      89.584 * _xScaling,
      56.793 * _yScaling,
    );
    path.cubicTo(
      89.584 * _xScaling,
      56.793 * _yScaling,
      89.584 * _xScaling,
      39.184 * _yScaling,
      89.584 * _xScaling,
      39.184 * _yScaling,
    );
    path.cubicTo(
      89.584 * _xScaling,
      31.199999999999996 * _yScaling,
      91.792 * _xScaling,
      25.758999999999997 * _yScaling,
      103.254 * _xScaling,
      25.758999999999997 * _yScaling,
    );
    path.cubicTo(
      103.254 * _xScaling,
      25.758999999999997 * _yScaling,
      117.849 * _xScaling,
      25.752999999999997 * _yScaling,
      117.849 * _xScaling,
      25.752999999999997 * _yScaling,
    );
    path.cubicTo(
      117.849 * _xScaling,
      25.752999999999997 * _yScaling,
      117.849 * _xScaling,
      1.08 * _yScaling,
      117.849 * _xScaling,
      1.08 * _yScaling,
    );
    path.cubicTo(
      115.325 * _xScaling,
      0.752 * _yScaling,
      106.661 * _xScaling,
      0 * _yScaling,
      96.577 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      75.52 * _xScaling,
      0 * _yScaling,
      61.104 * _xScaling,
      12.853 * _yScaling,
      61.104 * _xScaling,
      36.452 * _yScaling,
    );
    path.cubicTo(
      61.104 * _xScaling,
      36.452 * _yScaling,
      61.104 * _xScaling,
      56.793 * _yScaling,
      61.104 * _xScaling,
      56.793 * _yScaling,
    );
    path.cubicTo(
      61.104 * _xScaling,
      56.793 * _yScaling,
      37.29 * _xScaling,
      56.793 * _yScaling,
      37.29 * _xScaling,
      56.793 * _yScaling,
    );
    path.cubicTo(
      37.29 * _xScaling,
      56.793 * _yScaling,
      37.29 * _xScaling,
      84.378 * _yScaling,
      37.29 * _xScaling,
      84.378 * _yScaling,
    );
    path.cubicTo(
      37.29 * _xScaling,
      84.378 * _yScaling,
      61.104 * _xScaling,
      84.378 * _yScaling,
      61.104 * _xScaling,
      84.378 * _yScaling,
    );
    path.cubicTo(
      61.104 * _xScaling,
      84.378 * _yScaling,
      61.104 * _xScaling,
      155.139 * _yScaling,
      61.104 * _xScaling,
      155.139 * _yScaling,
    );
    path.cubicTo(
      61.104 * _xScaling,
      155.139 * _yScaling,
      89.584 * _xScaling,
      155.139 * _yScaling,
      89.584 * _xScaling,
      155.139 * _yScaling,
    );
    path.cubicTo(
      89.584 * _xScaling,
      155.139 * _yScaling,
      89.584 * _xScaling,
      155.139 * _yScaling,
      89.584 * _xScaling,
      155.139 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Google1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 512;
    final double _yScaling = size.height / 512;
    path.lineTo(419.404 * _xScaling, 58.936 * _yScaling);
    path.cubicTo(
      419.404 * _xScaling,
      58.936 * _yScaling,
      336.471 * _xScaling,
      126.832 * _yScaling,
      336.471 * _xScaling,
      126.832 * _yScaling,
    );
    path.cubicTo(
      313.136 * _xScaling,
      112.246 * _yScaling,
      285.552 * _xScaling,
      103.82 * _yScaling,
      256 * _xScaling,
      103.82 * _yScaling,
    );
    path.cubicTo(
      189.27100000000002 * _xScaling,
      103.82 * _yScaling,
      132.571 * _xScaling,
      146.777 * _yScaling,
      112.035 * _xScaling,
      206.54399999999998 * _yScaling,
    );
    path.cubicTo(
      112.035 * _xScaling,
      206.54399999999998 * _yScaling,
      28.63799999999999 * _xScaling,
      138.26799999999997 * _yScaling,
      28.63799999999999 * _xScaling,
      138.26799999999997 * _yScaling,
    );
    path.cubicTo(
      28.63799999999999 * _xScaling,
      138.26799999999997 * _yScaling,
      28.62399999999999 * _xScaling,
      138.26799999999997 * _yScaling,
      28.62399999999999 * _xScaling,
      138.26799999999997 * _yScaling,
    );
    path.cubicTo(
      71.23 * _xScaling,
      56.123 * _yScaling,
      157.06 * _xScaling,
      0 * _yScaling,
      256 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      318.115 * _xScaling,
      0 * _yScaling,
      375.068 * _xScaling,
      22.126 * _yScaling,
      419.404 * _xScaling,
      58.936 * _yScaling,
    );
    path.cubicTo(
      419.404 * _xScaling,
      58.936 * _yScaling,
      419.404 * _xScaling,
      58.936 * _yScaling,
      419.404 * _xScaling,
      58.936 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Google2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 512;
    final double _yScaling = size.height / 512;
    path.lineTo(113.47 * _xScaling, 309.408 * _yScaling);
    path.cubicTo(
      113.47 * _xScaling,
      309.408 * _yScaling,
      95.648 * _xScaling,
      375.94 * _yScaling,
      95.648 * _xScaling,
      375.94 * _yScaling,
    );
    path.cubicTo(
      95.648 * _xScaling,
      375.94 * _yScaling,
      30.509 * _xScaling,
      377.318 * _yScaling,
      30.509 * _xScaling,
      377.318 * _yScaling,
    );
    path.cubicTo(
      11.042 * _xScaling,
      341.211 * _yScaling,
      0 * _xScaling,
      299.9 * _yScaling,
      0 * _xScaling,
      256 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      213.549 * _yScaling,
      10.324 * _xScaling,
      173.517 * _yScaling,
      28.624 * _xScaling,
      138.268 * _yScaling,
    );
    path.cubicTo(
      28.624 * _xScaling,
      138.268 * _yScaling,
      28.637999999999998 * _xScaling,
      138.268 * _yScaling,
      28.637999999999998 * _xScaling,
      138.268 * _yScaling,
    );
    path.cubicTo(
      28.637999999999998 * _xScaling,
      138.268 * _yScaling,
      86.63 * _xScaling,
      148.9 * _yScaling,
      86.63 * _xScaling,
      148.9 * _yScaling,
    );
    path.cubicTo(
      86.63 * _xScaling,
      148.9 * _yScaling,
      112.03399999999999 * _xScaling,
      206.544 * _yScaling,
      112.03399999999999 * _xScaling,
      206.544 * _yScaling,
    );
    path.cubicTo(
      106.71699999999998 * _xScaling,
      222.04500000000002 * _yScaling,
      103.81899999999999 * _xScaling,
      238.685 * _yScaling,
      103.81899999999999 * _xScaling,
      256 * _yScaling,
    );
    path.cubicTo(
      103.821 * _xScaling,
      274.792 * _yScaling,
      107.225 * _xScaling,
      292.797 * _yScaling,
      113.47 * _xScaling,
      309.408 * _yScaling,
    );
    path.cubicTo(
      113.47 * _xScaling,
      309.408 * _yScaling,
      113.47 * _xScaling,
      309.408 * _yScaling,
      113.47 * _xScaling,
      309.408 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Google3Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 512;
    final double _yScaling = size.height / 512;
    path.lineTo(416.253 * _xScaling, 455.624 * _yScaling);
    path.cubicTo(
      416.253 * _xScaling,
      455.624 * _yScaling,
      416.267 * _xScaling,
      455.63800000000003 * _yScaling,
      416.267 * _xScaling,
      455.63800000000003 * _yScaling,
    );
    path.cubicTo(
      372.396 * _xScaling,
      490.901 * _yScaling,
      316.666 * _xScaling,
      512 * _yScaling,
      256 * _xScaling,
      512 * _yScaling,
    );
    path.cubicTo(
      158.50900000000001 * _xScaling,
      512 * _yScaling,
      73.74799999999999 * _xScaling,
      457.509 * _yScaling,
      30.508999999999986 * _xScaling,
      377.31899999999996 * _yScaling,
    );
    path.cubicTo(
      30.508999999999986 * _xScaling,
      377.31899999999996 * _yScaling,
      113.46999999999998 * _xScaling,
      309.409 * _yScaling,
      113.46999999999998 * _xScaling,
      309.409 * _yScaling,
    );
    path.cubicTo(
      135.089 * _xScaling,
      367.10699999999997 * _yScaling,
      190.748 * _xScaling,
      408.18 * _yScaling,
      256 * _xScaling,
      408.18 * _yScaling,
    );
    path.cubicTo(
      284.047 * _xScaling,
      408.18 * _yScaling,
      310.323 * _xScaling,
      400.598 * _yScaling,
      332.87 * _xScaling,
      387.362 * _yScaling,
    );
    path.cubicTo(
      332.87 * _xScaling,
      387.362 * _yScaling,
      416.253 * _xScaling,
      455.624 * _yScaling,
      416.253 * _xScaling,
      455.624 * _yScaling,
    );
    path.cubicTo(
      416.253 * _xScaling,
      455.624 * _yScaling,
      416.253 * _xScaling,
      455.624 * _yScaling,
      416.253 * _xScaling,
      455.624 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Google4Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 512;
    final double _yScaling = size.height / 512;
    path.lineTo(507.527 * _xScaling, 208.176 * _yScaling);
    path.cubicTo(
      510.467 * _xScaling,
      223.662 * _yScaling,
      512 * _xScaling,
      239.655 * _yScaling,
      512 * _xScaling,
      256 * _yScaling,
    );
    path.cubicTo(
      512 * _xScaling,
      274.328 * _yScaling,
      510.073 * _xScaling,
      292.206 * _yScaling,
      506.402 * _xScaling,
      309.451 * _yScaling,
    );
    path.cubicTo(
      493.94 * _xScaling,
      368.134 * _yScaling,
      461.377 * _xScaling,
      419.37600000000003 * _yScaling,
      416.268 * _xScaling,
      455.63800000000003 * _yScaling,
    );
    path.cubicTo(
      416.268 * _xScaling,
      455.63800000000003 * _yScaling,
      416.25399999999996 * _xScaling,
      455.624 * _yScaling,
      416.25399999999996 * _xScaling,
      455.624 * _yScaling,
    );
    path.cubicTo(
      416.25399999999996 * _xScaling,
      455.624 * _yScaling,
      343.21 * _xScaling,
      451.89700000000005 * _yScaling,
      343.21 * _xScaling,
      451.89700000000005 * _yScaling,
    );
    path.cubicTo(
      343.21 * _xScaling,
      451.89700000000005 * _yScaling,
      332.87199999999996 * _xScaling,
      387.3620000000001 * _yScaling,
      332.87199999999996 * _xScaling,
      387.3620000000001 * _yScaling,
    );
    path.cubicTo(
      362.804 * _xScaling,
      369.8080000000001 * _yScaling,
      386.19599999999997 * _xScaling,
      342.3370000000001 * _yScaling,
      398.518 * _xScaling,
      309.4510000000001 * _yScaling,
    );
    path.cubicTo(
      398.518 * _xScaling,
      309.4510000000001 * _yScaling,
      261.628 * _xScaling,
      309.4510000000001 * _yScaling,
      261.628 * _xScaling,
      309.4510000000001 * _yScaling,
    );
    path.cubicTo(
      261.628 * _xScaling,
      309.4510000000001 * _yScaling,
      261.628 * _xScaling,
      208.176 * _yScaling,
      261.628 * _xScaling,
      208.176 * _yScaling,
    );
    path.cubicTo(
      261.628 * _xScaling,
      208.176 * _yScaling,
      400.515 * _xScaling,
      208.176 * _yScaling,
      400.515 * _xScaling,
      208.176 * _yScaling,
    );
    path.cubicTo(
      400.515 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
    );
    path.cubicTo(
      507.527 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
    );
    path.cubicTo(
      507.527 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
      507.527 * _xScaling,
      208.176 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
