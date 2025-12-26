/*

  # Setup logging function

  This file setups console logging for flutter app

  Store this code in:
  lib\utils\app_logger.dart

  You can use this by intializing it in main()

  void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppLogger.initialize(); // Initialize logging before running the app
  runApp(MyApp());
  }

  and using it like AppLogger.info("message")

*/
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 3,
      lineLength: 80,
      colors: true,
      printEmojis: true,
    ),
    level: Level.debug,
  );

  static bool _isInitialized = false;

  static void initialize() {
    _isInitialized = true;
  }

  static void debug(String message) {
    if (_isInitialized) _logger.d(message);
  }

  static void info(String message) {
    if (_isInitialized) _logger.i(message);
  }

  static void warning(String message) {
    if (_isInitialized) _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    if (_isInitialized) {
      _logger.e(message, error: error, stackTrace: StackTrace.current);
    }
  }
}
