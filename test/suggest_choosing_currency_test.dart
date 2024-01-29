// import 'package:flutter_test/flutter_test.dart';

// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockSuggestChoosingCurrencyPlatform
//     with MockPlatformInterfaceMixin
//     implements SuggestChoosingCurrencyPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final SuggestChoosingCurrencyPlatform initialPlatform = SuggestChoosingCurrencyPlatform.instance;

//   test('$MethodChannelSuggestChoosingCurrency is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelSuggestChoosingCurrency>());
//   });

//   test('getPlatformVersion', () async {
//     SuggestChoosingCurrency suggestChoosingCurrencyPlugin = SuggestChoosingCurrency();
//     MockSuggestChoosingCurrencyPlatform fakePlatform = MockSuggestChoosingCurrencyPlatform();
//     SuggestChoosingCurrencyPlatform.instance = fakePlatform;

//     expect(await suggestChoosingCurrencyPlugin.getPlatformVersion(), '42');
//   });
// }
