import 'dart:async';

// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:screenshots/config.dart';
import 'package:screenshots/capture_screen.dart';



void main() {
  group('Test Launch App', () {
    FlutterDriver driver;
    final Map config = Config().config;


    setUpAll(() async {
      // Connects to the app
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        // Closes the connection
        driver.close();
      }
    });

    test('launch', () async {

      SerializableFinder message = find.text("You have pushed the button this many times:");
      
      await driver.waitFor(message);  
      await screenshot(driver, config, '0');         
    });
  });
}