# Flutter course

Some notes written during watching the ["Learn Flutter"](https://www.udemy.com/learn-flutter-dart-to-build-ios-android-apps/) course

## Getting started with Flutter

For help getting started with Flutter, view online
[documentation](https://flutter.io/).

## About widgets

Everything is a widget in flutter. A widget may render UI or may contain only some logic. A flutter application is a Widget tree.

Init state is passing with constructor during creation of a widget

### State<T>

TBD

### StatefullWidget

#### Working flow

Input Data -> Widget + Internal state -> Renders UI

Data can changed externally and it gets rerendered when Input Data changes OR local state changes

#### Lifecycle

```constructor()``` - function initiating a type

```initState()``` - inits initial state

```build()``` - called before drawing something on the screen. Can be called multiple times before very receiving data

```setState()``` - updates internal state of a widget

```didUpdateWidget()``` - called after changing data, but before next build()

### StatelessWidget

#### Working flow

Input Data -> Widget -> Renders UI

Data can changed externally and it gets rerendered when Input Data changes

#### Lifecycle

```constructor()``` - function initiating a type

```build()``` - called before drawing something on the screen. Can be called multiple times before very receiving data.

## Some notes

- Private classes are named with underscore in the beginning
- Flutter always calls 'build' when draws something on the screen the build always returns another widget
