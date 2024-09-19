List<Map> flutterErrorsApi = [
  // Error (1)
  {
    "errTitle":
        '''Gradle issue: * What went wrong: A problem occurred configuring root project 'android'.''',
    "errDesc":
        '''Whether the first time or not. When you click run on your application you get an X gradle build error If you have any of the following lines in your error even a single line then try this solution.''',
    "errSolution": '''To fix this issue:
1. Go to ( C:\\Users\\AHMED\\AndroidStudioProjects\\<flutter-project>\\android\\build.gradle ).

2. Change the current ( buildscript ) function with the following:''',
    "stackLink":
        'https://stackoverflow.com/questions/55801157/how-to-fix-gradle-build-error-a-problem-occurred-configuring-root-project',
    "codeSource": '''buildscript {
    repositories {
        maven {
            url 'https://dl.google.com/dl/android/maven2'
        }
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.1.2'
        classpath 'com.google.gms:google-services:4.3.8'
    }
}
''',
  },

  // Error (2)
  {
    "errTitle":
        '''Gradle Issue: * Execution failed for task ':app:mapDebugSourceSetPaths' ''',
    "errDesc": '''This Issue usually occurres because the gradle version.''',
    "errSolution":
        '''To fix this issue, upgrade the dependency in build.gradle (project level dependancy):''',
    "stackLink":
        'https://stackoverflow.com/questions/72224454/execution-failed-for-task-appmapdebugsourcesetpaths-error-while-evaluatin',
    "codeSource": '''
classpath 'com.google.gms:google-services:4.3.10' // Not Worked
// To
classpath 'com.google.gms:google-services:4.3.14' // Worked'''
  },

  // Error (3)
  {
    "errTitle":
        '''Gradle Error: * Execution failed for task ":app:compileFlutterBuildDebug"''',
    "errDesc":
        '''This usually happens when running the flutter app because there is a packages in pubspec.yaml file that is not got or upgraded.''',
    "errSolution": '''
To fix this issue:

1. Delete your pubspec.lock file

2. run these commands in your terminal:''',
    "stackLink":
        'https://stackoverflow.com/questions/61930007/how-to-solve-execution-failed-for-task-appcompileflutterbuilddebug',
    "codeSource": '''
    // Command (1):
    flutter channel stable

    // Command (2):
    flutter upgrade --force

    // Command (3):
    flutter pub cache repair

    // Command (4):
    cd <YOUR APP FOLDER>

    // Command (5):
    flutter clean

    // Command (6):
    flutter pub get
    ''',
  },

  // Error (4)
  {
    "errTitle":
        '''Gradle Error: * Execution failed for task ":gradle:CompileGroovy"''',
    "errDesc":
        '''This issue usually happens when createing a new flutter app, and there is an incompatibility between the gradle, java version, app language and region.''',
    "errSolution": '''To fix this issue:

1. Download the previous version for flutter like 3.10

2. delete your .gradle from your system disk the path of the folder like: C:\\Users'your user name'

3. Rerun the project again

4. make your system in ENGLISH if the system in another language

5. make sure the path of flutter that you added to enviroment variable is in Lowercase and dont have any symbol there is an example how it should to be: C:\\development\\flutter\\bin  "Notice: if the path have any Uppercase or custom symbol you have to edit the name of the folders in your windows explorer then add the path to enviroment variable"

6. Make sure your Regional Format in US from: Settings -> Time & Language -> Region -> Regional Format

7. delete your .gradle from your system disk the path of the folder like: C:\\Users\\'your user name'

8. Rerun the project again.

9. Find out your java version by running the command: `java --version`

10. Go to https://docs.gradle.org/current/userguide/compatibility.html#java and find out the gradle version compatible with your java version.

11. Go to your project folder and find the file, gradle-wrapper.properties in: android/gradle/wrapper/gradle-wrapper.properties

12. Change the version number of the distribution Url
for mine: distributionUrl=https://services.gradle.org/distributions/gradle-7.5-all.zip
to: distributionUrl=https://services.gradle.org/distributions/gradle-7.6- all.zip

13. Rerun the project, gradle should begin downloading a new version.''',
    "stackLink":
        'https://stackoverflow.com/questions/77096869/execution-failed-for-task-gradlecompilegroovy',
  },

  // Error (5)
  {
    "errTitle":
        '''Gradle Error: * Could not open settings generic class cache for setting file''',
    "errDesc": '''Java JDK 16 is the one that seems to lead to this issue''',
    "stackLink":
        'https://stackoverflow.com/questions/67240279/could-not-open-settings-generic-class-cache-for-settings-file',
    "errSolution":
        '''try downgrading by downloading a lower version of JDK preferable JDK 8 or 11.

To future individuals who will run to this error. Here is the link to download the JDK enjoy your coding experience don't forget to change the path too.

https://www.oracle.com/java/technologies/javase-downloads.html''',
  },

  // Error (6)
  {
    "errTitle":
        '''Gradle Error: * A problem occurred configuring project ':connectivity_plus' ''',
    "errDesc": '''It seems that the issue lies in the android block.
The error specifically mentions that there is no signature of the method android() that is applicable for the given argument. This typically occurs when there is a mismatch between the Gradle version and the Android Gradle plugin version being used.''',
    "stackLink":
        'https://stackoverflow.com/questions/76296520/android-studio-gradle-error-a-problem-occurred-evaluating-project-connectivi',
    "errSolution": '''
To resolve this issue, you can try the following steps:

1. Update the Gradle version. In the build.gradle file of your project (not the one in the 'connectivity_plus' library), make sure you are using a compatible Gradle version.

2. Sync your project. After making any changes to the Gradle files, it's important to sync your project with the updated configurations. In Android Studio, you can click on the "Sync Project with Gradle Files" button or select "File" -> "Sync Project with Gradle Files" from the menu.''',
  },

  // Error (7)
  {
    "errTitle":
        '''Could not locate aapt. Please ensure you have the Android buildtools installed''',
    "errDesc":
        '''This issue usually happens when running the flutter app, because there is a files in the 'build-tools' folder not installed or crashed''',
    "stackLink":
        'https://stackoverflow.com/questions/66596943/flutter-app-could-not-locate-aapt-while-building',
    "errSolution": '''To fix this issue:

Solution (1) ::
Going into the folder where the android sdk is located and under the 'build-tools' delete everything inside it, then using android studio re install the build tools this will fix the issue

Solution (2) ::
Check in cmd flutter doctor, something like this will occur:
[!] Android toolchain - develop for Android devices (Android SDK version 30.0.3) X Android SDK file not found: C:\\Users\\aksha\\AppData\\Local\\Android\\sdk\\build-tools\\30.0.3\\aapt.

Problem is your sdk version 30.0.3 is not installed successfully try to download it separately from https://androidsdkoffline.blogspot.com/p/android-sdk-build-tools.html?m=1
and unzip it and replace its content with 30.0.3 at location C:\\Users\\aksha\\AppData\\Local\\Android\\sdk\\build-tools\\30.0.3'''
  },

  // Error (8)
  {
    "errTitle":
        '''NoSuchMethodError: The method 'markNeedsBuild' was called on null.''',
    "errDesc":
        '''This error is often found in asynchronous task (Future) processing, such as a page requesting a web API data and refreshing the Widget State based on the data.

This error occurs when the asynchronous task ends after the page has been popped, but does not check if the State is still (mounted) and continues to call setState.''',
    "errSolution": '''Solution (1) ::
To fix this issue, include setState() method in a (mounted) if condition statement. This will check to see if the answer has returned before refreshing or reloading the widgets.

Solution (2) ::
You can create 'Future.delayed' statement with 'Duration.zero()' then write your own code.''',
    "stackLink":
        'https://stackoverflow.com/questions/63181024/nosuchmethoderror-the-method-markneedsbuild-was-called-on-null',
    "codeSource": '''
// Solution (1)
if (mounted) {
          setState(() {
            // CODE //
          })
        }
        

// Solution (2)
Future.delayed(Duration.zero, () {
  // CODE //
});''',
  },

  // Error (9)
  {
    "errTitle":
        '''NullPointerException: _TypeError (Null check operator used on a null value).''',
    "errDesc":
        ''''NullPointerException' in Flutter occurs when a variable or object reference is accessed before it is initialized,  resulting in a runtime error. This error often  arises due to improper handling of null values or uninitialized variables.''',
    "errSolution":
        '''To fix the "NullPointerException" error, you must assign a null check pointer (?) to the variable you first set to null.''',
    "stackLink":
        'https://stackoverflow.com/questions/64278595/null-check-operator-used-on-a-null-value',
    "codeSource": '''
// Solution (1) ::
String? name;
int length = name?.length ?? 0;


// Solution (2) ::
var s = string;
if (s != null) {
  var len = s.length;
}
''',
  },

  // Error (10)
  {
    "errTitle":
        '''IndexError:RangeError (RangeError (index): Invalid value: Not in inclusive range 0..2: 3)''',
    "errDesc":
        '''IndexError in Flutter occurs when attempting to access an index that is out of bounds in a list or array.

This error often arises due to incorrect index calculations or accessing elements beyond the bounds of a collection.''',
    "errSolution":
        '''To fix "IndexError", You must set or get an index that exists in the list or array.''',
    "stackLink":
        'https://stackoverflow.com/questions/53967624/flutter-error-rangeerror-index-invalid-value-not-in-range-0-2-inclusive',
    "codeSource": '''
// Solution (1) ::
List<int> numbers = [1, 2, 3];
int index = 2; // 2 in range instead of 3 for example
int value = numbers[index];

// Solution (2) ::
List<int> numbers = [1, 2, 3];
for (int i = 0; i < numbers.length; i++) {
  print(numbers[i]);
}
''',
  },

  // Error (11)
  {
    "errTitle":
        '''TypeError: A value of type 'String' can't be assigned to a variable of type 'int'.''',
    "errDesc":
        '''TypeError in Flutter occurs when there is an attempt to perform an operation on a data type that is not supported by that operation. This error often arises due to mismatches in data types or improper type conversions.''',
    "errSolution":
        '''To fix the "TypeError" issue, Making sure the variable types match—for example, putting a String variable in another String variable and an Integer variable in another Integer variable.''',
    "stackLink":
        'https://stackoverflow.com/questions/73181563/a-value-of-type-int-cant-be-assigned-to-a-variable-of-type-string',
    "codeSource": '''int number = 10;
String text = 'The number is: \$number'; // use String data type instead of int for example''',
  },

  // Error (12)
  {
    "errTitle":
        '''ArgumentError: 1 positional argument expected by 'printName', but 0 found.''',
    "errDesc":
        '''An ArgumentError occurs when a function receives one or more arguments that are invalid or out of range.
    
This error often arises during function calls, particularly when passing incorrect parameters.''',
    "errSolution":
        '''To fix "ArgumentError" issue, you must pass a valid argument to your function.''',
    "stackLink":
        'https://stackoverflow.com/questions/70380483/1-positional-arguments-expected-but-0-found-try-adding-the-missing-arguments',
    "codeSource": '''void printNumber(int number) {
  print('The number is: \$number');
}

printNumber(); // Missing required positional argument

// Solution
printNumber(2);''',
  },

  // Error (13)
  {
    "errTitle": '''StateError (Bad state: No element)''',
    "errDesc":
        '''A StateError occurs when an operation is performed on an object in an invalid or inappropriate state.

In Flutter, this error commonly arises in scenarios involving widget states, such as trying to access a widget that is no longer available or trying to modify a widget's state incorrectly.''',
    "errSolution":
        '''To fix "StateError" issue, you must access to the widget correctly or access to it with a variable in range.''',
    "stackLink":
        'https://stackoverflow.com/questions/52354195/list-firstwhere-bad-state-no-element',
    "codeSource": '''List<String> names = ['ahmed', 'mohamed', 'gamal'];

String selectedItem = names.singleWhere((item) => item == 'wael'); // No matching element

// Solution
String selectedItem = names.singleWhere((item) => item == 'wael', orElse: () => 'no element'); // set a default value''',
  },

  // Error (14)
  {
    "errTitle": '''NoSuchMethodError: The method '[]' was called on null.''',
    "errDesc":
        '''This issue occurs because the Futures aren't always ready, they're asynchronous.''',
    "errSolution":
        '''It's best to check the ConnectionState of the Future to check if it's ready, then check to see whether or not the data is empty. Another bonus of using ConnectionState is the ability to check whether or not it's waiting for something. You can display a loading icon or something else then.''',
    "stackLink":
        'https://stackoverflow.com/questions/74913392/how-can-i-solve-nosuchmethoderror-the-method-was-called-on-null',
    "codeSource": '''
// Solution (1) ::
class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Issue Point
      body: FutureBuilder(
        future: usersRef.document(widget.userId).get(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {

          // Solution
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              print(snapshot.data['email']);
              return Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Text('MeandYou')
                  ],
                ),
              );
            }
          }
        },
      ),
    );
  }
}



// Solution (2) ::
Future.delayed(Duration.zero, () {
  // CODE //
});
''',
  },

  // Error (15)
  {
    "errTitle":
        '''FirebaseException: ([core/no-app] No Firebase App '[DEFAULT]' has been created - call Firebase.initailizeApp())''',
    "errDesc":
        '''All Firebase versions have been updated and now you have to call Firebase.initializeApp() before using any Firebase product.''',
    "errSolution":
        '''1. First, all Firebase products now depend on firebase_core version (0.5.0+), therefore you need to add it in the pubspec.yaml file.

2. Then you have to call Firebase.initializeApp()''',
    "stackLink":
        'https://stackoverflow.com/questions/63492211/no-firebase-app-default-has-been-created-call-firebase-initializeapp-in',
    "codeSource": '''
// First Example

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MyAwesomeApp();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Loading();
      },
    );
  }
}




// Second Example
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstRoute(title: 'First Route'),
    );
  }
}

class FirstRoute extends StatefulWidget {
  FirstRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Container(
                    height: 27,
                    child: Text(
                      "Name: \${snapshot.data.data()['name']}",
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Text("No data");
            }
            return CircularProgressIndicator();
          },
        ));
  }

  // Solution Point
  Future<DocumentSnapshot> getData() async {
    await Firebase.initializeApp();
    return await FirebaseFirestore.instance
        .collection("users")
        .doc("docID")
        .get();
  }
}''',
  },

  // Error (16)
  {
    "errTitle":
        '''Flutter upgrade: ProcessException: Process exited abnormally''',
    "errDesc":
        '''This issue usually happens when you upgrade your flutter app, because you run the command `flutter upgrade` in a path that not containe ".git" hidden folder.''',
    "errSolution":
        '''To fix this issue, Run the command `flutter upgrade` in the folder that contains ".git" hidden folder.''',
    "stackLink":
        'https://stackoverflow.com/questions/65404958/flutter-upgrade-is-not-working-in-vs-code-giving-improper-url-as-well',
    "codeSource":
        '''cd Program Files // Program Files Folder or any another folder that contains the '.git' hidden folder
    
flutter upgrade'''
  },

  // Error (17)
  {
    "errTitle":
        '''dartdev: Error: Error when reading 'dartdev': The system cannot find the file specified.''',
    "errDesc":
        '''This usually happens when you have synced the code from github or other source control and there are some differences in the launch.json file''',
    "errSolution": '''
To fix this issue:

Solution (1) ::
Delete the .vscode folder which contains launch.json and try to run again.

Solution (2) ::
A temporary fix would be by changing vscode launch.json. Put the project path as program argument, like the following:''',
    "stackLink":
        'https://stackoverflow.com/questions/55235955/error-error-when-readinrror-error-when-reading-bin-main-dart-the-system-can',
    "codeSource": '''"name": "Flutter",
"type": "dart",
"request": "launch",
"program": \${workspaceFolder}/Flutter/first_app/lib/main.dart"''',
  },

  // Error (18)
  {
    "errTitle":
        '''Gradle Error: * Could not resolve all files for configuration ' classpath' ''',
    "errDesc":
        '''This issue usually happens in build.gradle file especially in buildscript function''',
    "errSolution":
        '''To fix this issue, you have to make some edits to the build.gradle file like the following''',
    "stackLink":
        'https://stackoverflow.com/questions/59955033/type-string-is-not-a-subtype-of-type-null-in-get-method-flutter',
    "codeSource": '''
// Error Code
buildscript {
  repositories {
    jcenter {
        url "http://jcenter.bintray.com/"
    }
  }
}

allprojects {
repositories {
    jcenter {
        url "http://jcenter.bintray.com/"
    }
  }
}


// Correct Code
buildscript {
  repositories {
    maven { url 'http://repo1.maven.org/maven2' }
  }
}

allprojects {
repositories {
    maven { url 'http://repo1.maven.org/maven2' }
  }
}

'''
  },
];
