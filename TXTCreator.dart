import 'dart:io';

/* THIS CODE SOLVES THE FOLLOWING CHALLENGE:

 * Create a program capable of interacting with a TXT file.
 * IMPORTANT: The TXT file must NOT be uploaded as part of the correction. 
 * Only the code.
 * 
 * - If it does not exist, you must create a file called "text.txt".
 * - From the program you must be able to enter text by console and save it in a new line each time.
 * In a new line each time the "Enter" button is pressed.
 * - If the file exists, the program has to give the option to continue typing
 * If the file exists, the program has to give the option to continue typing, or to delete its contents and start from the beginning.
 * If continue typing is selected, the text already in the file must be displayed on the console.
 * - If you select continue writing, the text already in the file has to be displayed by console.  
 */

//Const filename
const filename = 'text.txt';

/// Function to checks if the file [filename] exists.
///
/// Returns true if the file exists; otherwise, returns false.
bool fileExist() {
  return File(filename).existsSync();
}

/// Main function to handle file operations.
void main() {
  print("Checking if file text.txt exist...");
  //Document exist let write it or delete it
  if (fileExist()) {
    print(
        'Text.txt exists! Do you want to continue writing or delete it and start again?\n(W) Continue writing / (D) Delete it and start again?');
    //While TRUE to ask again if user miswrite options
    while (true) {
      String input = stdin.readLineSync().toString();
      //Write document option
      if (input == 'w' || input == 'W') {
        File(filename).readAsString().then((String content) => print(content));
        print('\nAdd Something new...:');
        var myfile = File(filename);
        var sink = myfile.openWrite();
        var content = stdin.readLineSync().toString();
        sink.write(content);
        sink.close();
        break;
      }
      //Delete document option
      if (input == 'd' || input == 'D') {
        File(filename).delete();
        print('Document was deleted successfully');
        break;
      }
      //Validation check for input options
      if (input != 'w' && input != 'W' && input != 'd' && input != 'D') {
        print(
            'Write (W) if you want to continue writing or (D) to delete it and start again');
      }
    }
    //Document NOT exist option
  } else {
    print(
        "The file text.txt does NOT exist...\nLet's create it and write down");
    File(filename).create();
    var myfile = File(filename);
    var sink = myfile.openWrite();
    var content = stdin.readLineSync().toString();
    sink.write(content);
    sink.close();
    print('Document has been written and saved!');
  }
}
