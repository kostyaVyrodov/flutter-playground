# Notes about flutter framework

Some notes written during watching the ["Learn Flutter"](https://www.udemy.com/learn-flutter-dart-to-build-ios-android-apps/) course

## Widgets

Everything is a widget in flutter. A widget may render UI or may contain only some logic. A flutter application is a Widget tree.

Init state is passing with constructor during creation of a widget

### Lists

ListView widget renders everything at once, even if you have 10K items, all of them will be rendered. ListView is better to use when a list doesn't change its size and it's not big

ListView.builder is used to render dynamic lists. Works similar to RecylcerView in Android

```dart

ListView.builder(
  itemBuilder: (BuildContext context, int index) {},
  itemCount: <int>,
)

```

### State<T> type

TBD

### StatefullWidget

#### Working flow

Input Data -> Widget + Internal state -> Renders UI

Data can changed externally and it gets rerendered when Input Data changes OR local state changes

#### StatefullWidget lifecycle

```constructor()``` - function initiating a type

```initState()``` - inits initial state

```build()``` - called before drawing something on the screen. Can be called multiple times before very receiving data

```setState()``` - updates internal state of a widget

```didUpdateWidget()``` - called after changing data, but before next build()

### StatelessWidget

#### StatelessWidget working flow

Input Data -> Widget -> Renders UI

Data can changed externally and it gets rerendered when Input Data changes

#### StatelessWidget lifecycle

```constructor()``` - function initiating a type

```build()``` - called before drawing something on the screen. Can be called multiple times before very receiving data.

## Debugging Flutter Apps

The snippet bellow allow draw additional lines around controls to see theirs paddings, margins and sizes. Also it does some additional logic.

```dart

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'product_manager.dart';

main() {
  // Draws lines around controls
  debugPaintSizeEnabled = true;
  // Draws baseline of a text
  debugPaintBaselinesEnabled = true;
  // Indicates where tap event occurred
  debugPaintPointersEnabled = true;
  runApp(MyApp());
}

```

## Navigation

```Navigator``` type is responsible of application navigation

```Navigator.pop(context, <extra arg>);``` allows to close current page

The code bellow allows open a page

```dart

Navigator.push<bool>(
  context,
  MaterialPageRoute(
    builder: (context) => ProductPage(
        products[index]['imageUrl'],
        products[index]['title']),
  ),
).then((bool value) {
  if (value) {
    deleteProduct(index);
  }
});

```

```WillPopScope``` allows to intercept clicking on hardware back button (Android)

```Navigator.pushReplacement``` opens a new page and closes current one

## Some notes

- Private classes are named with underscore in the beginning
- Flutter always calls 'build' when draws something on the screen the build always returns another widget
- A mixin is a calls we merged with another class
