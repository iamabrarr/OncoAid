import 'package:OncoAid/views/widgets/custom_snackbar.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerService {
  static Future<String?> pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        String filePath = result.files.single.path!;
        return filePath;
      } else {
        return null;
      }
    } catch (e) {
      CustomSnackbar.showCustomSnackbar(true, 'Something went wrong');
    }
  }
}
