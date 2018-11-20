# Notes about Dart language

Everything is object in the dart

## Core features

Dart is an object-oriented language: Everything is an object! You create your own object blueprints via the class  keyword. Thereafter, you constructor concrete instances

Dart is a strongly typed language: Everything has a type and the compiler will yell at you if you use a wrong type/ value

Inside of objects you work with properties(data) and methods(actions), outside of objects you work with variables(data) and functions(actions)

### Base types

- Numbers: num  => Split into int  (e.g. 42 ) and double (e.g. 2.5)
- Text: String  => e.g. 'Hello!'
- Booleans: bool => true  or false
- Lists: Multiple, ordered elements => e.g. [1, 2, 3]
- Maps: Multiple, named and unordered elements => e.g. {'name': 'Max', 'age': 29}

## Keywords

final - data is not changeable in a property

```dart
// It's possible to add something to the '[]', but you can't change the old '[]' to the new one.
final List<String> _products = [];
```

const - the value of something is never changeable

```dart
// It's not possible to add anything to the [];
List<String> _products = const [];
```
