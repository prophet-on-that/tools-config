# HOWTO: Install Emacs on Windows 10

These instructions work on Window 10 - setup may vary for other
Windows versions.

1. Download Emacs for Windows from the
   [official site](https://www.gnu.org/software/emacs/download.html).
2. Unpack and copy to an appropriate locations e.g. `C:\Program
   Files`. 
3. Create the following `runemacs.cmd` command, which will set the
   desired home directory for Emacs before running in. In the
   following, this home directory is assumed to be
   `C:\Users\prophet-on-that`.
   ``` 
   @echo off
   set home=C:\Users\prophet-on-that 
   start "" "c:\Program Files\emacs-25.2-x86_64\bin\runemacs.exe" 
   ```
4. Create a shortcut to `runemacs.cmd`, and, using the *properties*
   dialog, set its *start in* folder to be as above. To prevent the
   command prompt flashing before Emacs is shown, additionally set it
   to start minimised.
5. Add this shortcut to the Windows start menu for your user
   (`%AppData%\Microsoft\Windows\Start Menu\Programs`) to make
   it searchable.
