# 環境構築

$ flutter create ${app_name}

$ flutter run 

r : ホットリロード
shift + r : 再起動

実行 -> デバックなしで実装すると自動ホットリロードする

# 型

num 数値
int 整数
double 少数


# Dart 基本関数の形

${returnType} fnName(${type} value) {
  ...
}

```
class Person {
  String name = "MAC";
  int age = 29;

  Person({this.name , this.age = 30}) //デフォルト指定
}

int addNumbers(int num1, int num2) {
  num1 + num2;
  return num1 + num2;
}

void main() {
  var p1 = Person({name :"" ,age : 12});
  p1.age = 20;
  var result = addNumbers(1, 2);
  result = addNumbers(result, 2);
  print(result);
}
```

## flutter IOSデザイン
``` 
import "package:flutter/cupertino.dart";
 
void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("APP"),
        ),
        child: Text("test"),
      ),
    );
  }
}

```

## flutter materialデザイン

```
import "package:flutter/material.dart";

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("APP"),
        ),
        body: Text("test"),
      ),
    );
  }
}
```