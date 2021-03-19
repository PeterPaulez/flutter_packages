![](https://img.shields.io/badge/Version-0.1.0-informational?style=flat&logo=appveyor&logoColor=ff69b4&color=brightgreen)

# Transitioner Package
This package helps how to manage transitions between different views/pages.  
I am going to add more types of transitions, keep posted.

## Getting Started
In the pubspec.yaml of your flutter project, add the following dependency:
```
dependencies:
    transitioner: ^0.1.0
```

## Use example case
```dart
Transitioner(
    context: context,
    child: UnoPage(),
    animation: AnimationType.fadeIn, // Optional value
    duration: Duration(milliseconds: 2000), // Optional value
    replacement: true, // Optional value
    curveType: CurveType.decelerate, // Optional value
);
```

## Attributes
List of possible attributes on Transitioner Class.

### Required
- context: from the BuildContext  
- child: destiny View/Page Class

### Optional
- animation: Defaults Normal, type of transition to show  
- duration: Default 300ms, duration of animation  
- replacement: Default false, entirely the scope or not  
- curveType: Default ease, type of animationCurve to show

## Different types of principal Transition
- normal
- fadeIn
- slideRight
- slideLeft
- slideTop
- slideBottom
- scale

## Different types of Curves
- ease
- bounce
- bounceOut
- decelerate
- elastic-linear

## Video Example
<img src="https://github.com/PeterPaulez/repository/blob/main/api_login_app-1615120214725.gif?raw=true" width="400px">