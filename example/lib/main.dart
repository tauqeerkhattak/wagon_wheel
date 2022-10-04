import 'package:flutter/material.dart';
import 'package:wagon_wheel/models/ball.dart';
import 'package:wagon_wheel/wagon_wheel.dart';

void main() {
  runApp(const WagonWheelExample());
}

class WagonWheelExample extends StatefulWidget {
  const WagonWheelExample({Key? key}) : super(key: key);

  @override
  State<WagonWheelExample> createState() => _WagonWheelExampleState();
}

class _WagonWheelExampleState extends State<WagonWheelExample> {
  List<Ball> balls = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 15; i++) {
      balls.add(
        Ball(
          angle: (20 * i).toDouble(),
          runs: i % 3 == 0 ? 4 : 6,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WagonWheel(
                balls: balls,
                fourColor: Colors.blue,
                sixColor: Colors.red,
                background: Stack(
                  children: [
                    Container(
                      color: Colors.green,
                    ),
                    Center(
                      child: Container(
                        width: 10,
                        height: 60,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
