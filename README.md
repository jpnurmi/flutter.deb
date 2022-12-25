# flutter.deb

A proof of concept of packaging the Flutter SDK as a Debian package that declares Clang, CMake, GTK+ etc. as dependencies to avoid version conflicts between bundled vs. host libs and tools.

### Build

```sh
$ dpkg-buildpackage 
dpkg-buildpackage: info: source package flutter
dpkg-buildpackage: info: source version 3+git
[...]
dpkg-deb: building package 'flutter' in '../flutter_3+git_amd64.deb'.
[...]
```

### Install

```sh
$ sudo apt install ./flutter_3+git_amd64.deb 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'flutter' instead of './flutter_3+git_amd64.deb'
[...]
The following NEW packages will be installed:
  binfmt-support binutils binutils-common binutils-x86-64-linux-gnu clang clang-14 cmake cmake-data
  curl dh-elpa-helper flutter gcc gcc-11 git git-man icu-devtools lib32gcc-s1 lib32stdc++6 libasan6
  libatk-bridge2.0-dev libatk1.0-dev libatspi2.0-dev libbinutils libblkid-dev libbrotli-dev
  libc-dev-bin libc-devtools libc6-dev libc6-i386 libcairo2-dev libcc1-0 libclang-common-14-dev
  libclang-cpp14 libclang1-14 libcrypt-dev libctf-nobfd0 libctf0 libdatrie-dev libdbus-1-dev
  libdeflate-dev libdpkg-perl libegl-dev libegl1-mesa-dev libepoxy-dev liberror-perl libexpat1-dev
  libffi-dev libfile-fcntllock-perl libfontconfig-dev libfontconfig1-dev libfreetype-dev
  libfreetype6-dev libfribidi-dev libgc1 libgcc-11-dev libgdk-pixbuf-2.0-dev libgl-dev libgles-dev
  libgles1 libglib2.0-dev libglib2.0-dev-bin libglvnd-core-dev libglvnd-dev libglx-dev
  libgraphite2-dev libgtk-3-dev libharfbuzz-dev libharfbuzz-gobject0 libice-dev libicu-dev libitm1
  libjbig-dev libjpeg-dev libjpeg-turbo8-dev libjpeg8-dev libjsoncpp25 libllvm14 liblsan0 liblzma-dev
  libmount-dev libncurses-dev libnsl-dev libobjc-11-dev libobjc4 libopengl-dev libpango1.0-dev
  libpcre16-3 libpcre2-16-0 libpcre2-dev libpcre2-posix3 libpcre3-dev libpcre32-3 libpcrecpp0v5
  libpfm4 libpixman-1-dev libpng-dev libpng-tools libpthread-stubs0-dev libquadmath0 librhash0
  libselinux1-dev libsepol-dev libsm-dev libstdc++-11-dev libthai-dev libtiff-dev libtiffxx5
  libtinfo-dev libtirpc-dev libtsan0 libubsan1 libwayland-bin libwayland-dev libx11-dev libxau-dev
  libxcb-render0-dev libxcb-shm0-dev libxcb1-dev libxcomposite-dev libxcursor-dev libxdamage-dev
  libxdmcp-dev libxext-dev libxfixes-dev libxft-dev libxi-dev libxinerama-dev libxkbcommon-dev
  libxml2-dev libxrandr-dev libxrender-dev libxtst-dev libz3-4 libz3-dev linux-libc-dev llvm-14
  llvm-14-dev llvm-14-linker-tools llvm-14-runtime llvm-14-tools make manpages-dev ninja-build
  pango1.0-tools pkg-config python3-distutils python3-lib2to3 python3-pygments rpcsvc-proto uuid-dev
  wayland-protocols x11proto-dev xorg-sgml-doctools xtrans-dev zlib1g-dev
0 upgraded, 155 newly installed, 0 to remove and 0 not upgraded.
Need to get 192 MB/192 MB of archives.
After this operation, 985 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 /home/ubuntu/flutter_3+git_amd64.deb flutter amd64 3+git [2 194 B]
[...]
[...]
Fetched 192 MB in 4s (44,4 MB/s)         
Extracting templates from packages: 100%
[...]
Selecting previously unselected package flutter.
Preparing to unpack .../135-flutter_3+git_amd64.deb ...
Unpacking flutter (3+git) ...
[...]
Setting up flutter (3+git) ...
```

### Use

```
$ flutter doctor -v
Initializing Flutter...
Cloning into '/home/ubuntu/.local/libexec/flutter'...
remote: Enumerating objects: 416561, done.
remote: Counting objects: 100% (82/82), done.
remote: Compressing objects: 100% (31/31), done.
remote: Total 416561 (delta 43), reused 69 (delta 32), pack-reused 416479
Receiving objects: 100% (416561/416561), 224.91 MiB | 13.38 MiB/s, done.
Resolving deltas: 100% (317476/317476), done.
Downloading Linux x64 Dart SDK from Flutter engine 3316dd8728419ad3534e3f6112aa6291f587078a...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  204M  100  204M    0     0  28.0M      0  0:00:07  0:00:07 --:--:-- 33.5M
Building flutter tool...

  ╔════════════════════════════════════════════════════════════════════════════╗
  ║                 Welcome to Flutter! - https://flutter.dev                  ║
  ║                                                                            ║
  ║ The Flutter tool uses Google Analytics to anonymously report feature usage ║
  ║ statistics and basic crash reports. This data is used to help improve      ║
  ║ Flutter tools over time.                                                   ║
  ║                                                                            ║
  ║ Flutter tool analytics are not sent on the very first run. To disable      ║
  ║ reporting, type 'flutter config --no-analytics'. To display the current    ║
  ║ setting, type 'flutter config'. If you opt out of analytics, an opt-out    ║
  ║ event will be sent, and then no further information will be sent by the    ║
  ║ Flutter tool.                                                              ║
  ║                                                                            ║
  ║ By downloading the Flutter SDK, you agree to the Google Terms of Service.  ║
  ║ Note: The Google Privacy Policy describes how data is handled in this      ║
  ║ service.                                                                   ║
  ║                                                                            ║
  ║ Moreover, Flutter includes the Dart SDK, which may send usage metrics and  ║
  ║ crash reports to Google.                                                   ║
  ║                                                                            ║
  ║ Read about data we send with crash reports:                                ║
  ║ https://flutter.dev/docs/reference/crash-reporting                         ║
  ║                                                                            ║
  ║ See Google's privacy policy:                                               ║
  ║ https://policies.google.com/privacy                                        ║
  ╚════════════════════════════════════════════════════════════════════════════╝


Downloading Material fonts...                                      485ms
Downloading Gradle Wrapper...                                      200ms
Downloading package sky_engine...                                  218ms
Downloading flutter_patched_sdk tools...                           358ms
Downloading flutter_patched_sdk_product tools...                   259ms
Downloading linux-x64 tools...                                   1,399ms
Downloading linux-x64/linux-x64-flutter-gtk tools...               558ms
Downloading linux-x64-profile/linux-x64-flutter-gtk tools...        383ms
Downloading linux-x64-release/linux-x64-flutter-gtk tools...        509ms
Downloading linux-x64/font-subset tools...                         193ms
Flutter 3.3.10 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 135454af32 (10 days ago) • 2022-12-15 07:36:55 -0800
Engine • revision 3316dd8728
Tools • Dart 2.18.6 • DevTools 2.15.0

[✓] Flutter (Channel stable, 3.3.10, on Ubuntu 22.04.1 LTS 5.15.0-56-generic, locale en_US.UTF-8)
    • Flutter version 3.3.10 on channel stable at /home/ubuntu/.local/libexec/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 135454af32 (10 days ago), 2022-12-15 07:36:55 -0800
    • Engine revision 3316dd8728
    • Dart version 2.18.6
    • DevTools version 2.15.0

[✗] Android toolchain - develop for Android devices
    ✗ Unable to locate Android SDK.
      Install Android Studio from: https://developer.android.com/studio/index.html
      On first launch it will assist you in installing the Android SDK components.
      (or visit https://flutter.dev/docs/get-started/install/linux#android-setup for detailed
      instructions).
      If the Android SDK has been installed to a custom location, please use
      `flutter config --android-sdk` to update to that location.


[✗] Chrome - develop for the web (Cannot find Chrome executable at google-chrome)
    ! Cannot find Chrome. Try setting CHROME_EXECUTABLE to a Chrome executable.

[✓] Linux toolchain - develop for Linux desktop
    • Ubuntu clang version 14.0.0-1ubuntu1
    • cmake version 3.22.1
    • ninja version 1.10.1
    • pkg-config version 0.29.2

[!] Android Studio (not installed)
    • Android Studio not found; download from https://developer.android.com/studio/index.html
      (or visit https://flutter.dev/docs/get-started/install/linux#android-setup for detailed
      instructions).

[✓] Connected device (1 available)
    • Linux (desktop) • linux • linux-x64 • Ubuntu 22.04.1 LTS 5.15.0-56-generic

[✓] HTTP Host Availability
    • All required HTTP hosts are available

! Doctor found issues in 3 categories.
```
