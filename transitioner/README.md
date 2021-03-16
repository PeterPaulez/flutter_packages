![](https://img.shields.io/badge/Version-0.0.2-informational?style=flat&logo=appveyor&logoColor=ff69b4&color=brightgreen)

# Transitioner
This package helps how to manage transitions between different views/pages.  
I am going to add more types of transitions, keep posted.

# Getting Started
In the pubspec.yaml of your flutter project, add the following dependency:
```
dependencies:
    transitioner: ^0.0.2
```

# Use example case
```dart
/// Transitioner Class
///
/// [context] from the BuildContext
/// [child] destiny View/Page
/// [animation] type of transition to show
/// [duration] duration of animation
/// [replacement] replace entirely the scope or not
/// [curveType] type of animationCurve to show
Transitioner(
    context: context,
    child: UnoPage(),
    animation: AnimationType.fadeIn, // Optional value
    duration: Duration(milliseconds: 2000), // Optional value
    replacement: true, // Optional value
    curveType: CurveType.decelerate, // Optional value
);
```

# Different types of principal Transition
- normal
- fadeIn
- slideRight
- slideLeft
- slideTop
- slideBottom
- scale

# Different types of Curves
- ease
- bounce
- bounceOut
- decelerate
- elastic-linear

# Video Example
<img src="https://github.com/PeterPaulez/repository/blob/main/api_login_app-1615120214725.gif?raw=true" width="400px">