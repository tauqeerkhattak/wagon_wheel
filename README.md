
A new Flutter package to create a custom wagon wheel widget for cricket applications.

## Getting started

To use this package, first download it using the following command:

```
flutter pub add wagon_wheel
```

And run:

```
flutter pub get
```

Finally,

```dart
import 'package:wagon_wheel/models/ball.dart';
import 'package:wagon_wheel/wagon_wheel.dart';
```

## Usage

To use this package, first create a list of balls:

```dart
List <Ball> balls = [];
```

And then in the initState of your StatefulWidget

```dart
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
```

After this step, you will be able to use the WagonWheel widget in your build method:

```dart
WagonWheel(
    balls: balls,
    fourColor: Colors.blue,
    sixColor: Colors.red,
    isInverse: true,
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
```

This will give you the following UI:

![Image](https://github.com/tauqeerkhattak/wagon_wheel/blob/main/Screenshot_1664881199.png "a title")
## Additional information

As of now, this package only supports lines for 4 and 6. Work is being done to add support to all shots that are played around the field. Till then, please filter out all the shots that are not either 4 or a 6.