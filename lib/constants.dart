// ignore_for_file: public_member_api_docs

import 'package:path/path.dart' as path;

/// Relative path to android resource folder
String androidResFolder(String? flavor, String? module) =>
    module == null || module.isEmpty
        ? "android/app/src/${flavor ?? 'main'}/res/"
        : "../$module/android/app/src/${flavor ?? 'main'}/res/";

/// Relative path to android colors.xml file
String androidColorsFile(String? flavor, String? module) => module == null ||
        module.isEmpty
    ? "android/app/src/${flavor ?? 'main'}/res/values/colors.xml"
    : "../$module/android/app/src/${flavor ?? 'main'}/res/values/colors.xml";

String androidManifestFile(String? module) => module == null || module.isEmpty
    ? 'android/app/src/main/AndroidManifest.xml'
    : '../$module/android/app/src/main/AndroidManifest.xml';
String androidGradleFile(String? module) => module == null || module.isEmpty
    ? 'android/app/build.gradle'
    : '../$module/android/app/build.gradle';
String androidLocalPropertiesFile(String? module) =>
    module == null || module.isEmpty
        ? 'android/local.properties'
        : '../$module/android/local.properties';

/// Relative path to flutter.gradle from flutter sdk path
const String androidFlutterGardlePath =
    'packages/flutter_tools/gradle/flutter.gradle';

/// Default min_sdk value for android
/// https://github.com/flutter/flutter/blob/master/packages/flutter_tools/gradle/flutter.gradle#L35-L37
const int androidDefaultAndroidMinSDK = 21;
const String androidFileName = 'ic_launcher.png';
const String androidAdaptiveForegroundFileName = 'ic_launcher_foreground.png';
const String androidAdaptiveBackgroundFileName = 'ic_launcher_background.png';
const String androidAdaptiveMonochromeFileName = 'ic_launcher_monochrome.png';
String androidAdaptiveXmlFolder(String? flavor, String? module) =>
    androidResFolder(flavor, module) + 'mipmap-anydpi-v26/';
const String androidDefaultIconName = 'ic_launcher';

String iosDefaultIconFolder(String? module) => module == null || module.isEmpty
    ? 'ios/Runner/Assets.xcassets/AppIcon.appiconset/'
    : '../$module/ios/Runner/Assets.xcassets/AppIcon.appiconset/';
String iosAssetFolder(String? module) => module == null || module.isEmpty
    ? 'ios/Runner/Assets.xcassets/'
    : '../$module/ios/Runner/Assets.xcassets/';
String iosConfigFile(String? module) => module == null || module.isEmpty
    ? 'ios/Runner.xcodeproj/project.pbxproj'
    : '../$module/ios/Runner.xcodeproj/project.pbxproj';
const String iosDefaultIconName = 'Icon-App';

// web
/// favicon.ico size
const int kFaviconSize = 16;

/// Relative web direcotry path
String webDirPath(String? module) =>
    path.join(module == null || module.isEmpty ? 'web' : '../$module/web');

/// Relative web icons directory path
String webIconsDirPath(String? module) =>
    path.join(webDirPath(module), 'icons');

/// Relative web manifest.json file path
String webManifestFilePath(String? module) =>
    path.join(webDirPath(module), 'manifest.json');
// TODO(RatakondalaArun): support for other images formats
/// Relative favicon.png path
String webFaviconFilePath(String? module) =>
    path.join(webDirPath(module), 'favicon.png');

/// Relative index.html file path
String webIndexFilePath(String? module) =>
    path.join(webDirPath(module), 'index.html');

/// Relative pubspec.yaml path
String pubspecFilePath = path.join('pubspec.yaml');

// Windows
/// Relative path to windows directory
String windowsDirPath = path.join('windows');

/// Relative path to windows resources directory
String windowsResourcesDirPath =
    path.join(windowsDirPath, 'runner', 'resources');

/// Relative path to windows icon file path
String windowsIconFilePath = path.join(windowsResourcesDirPath, 'app_icon.ico');

/// Default windows icon size for flutter
///
const int windowsDefaultIconSize = 48;

// MacOS

/// Relative path to macos folder
final macOSDirPath = path.join('macos');

/// Relative path to macos icons folder
final macOSIconsDirPath =
    path.join(macOSDirPath, 'Runner', 'Assets.xcassets', 'AppIcon.appiconset');

/// Relative path to macos contents.json
final macOSContentsFilePath = path.join(macOSIconsDirPath, 'Contents.json');

const String errorMissingImagePath =
    'Missing "image_path" or "image_path_android" + "image_path_ios" within configuration';
const String errorMissingPlatform =
    'No platform specified within config to generate icons for.';
const String errorMissingRegularAndroid =
    'Adaptive icon config found but no regular Android config. '
    'Below API 26 the regular Android config is required';
const String errorMissingMinSdk =
    'Cannot not find minSdk from android/app/build.gradle or android/local.properties'
    ' Specify minSdk in your flutter_launcher_config.yaml with "min_sdk_android"';
const String errorIncorrectIconName =
    'The icon name must contain only lowercase a-z, 0-9, or underscore: '
    'E.g. "ic_my_new_icon"';

String introMessage(String currentVersion) => '''
  ════════════════════════════════════════════
     FLUTTER LAUNCHER ICONS (v$currentVersion)                               
  ════════════════════════════════════════════
  ''';
