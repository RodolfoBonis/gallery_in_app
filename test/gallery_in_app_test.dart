import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gallery_in_app/gallery_in_app.dart';

void main() {
  const MethodChannel channel = MethodChannel('gallery_in_app');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GalleryInApp.platformVersion, '42');
  });
}
