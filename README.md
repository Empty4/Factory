## Рубежный контроль №2 
**Студента группы ИУ8-23**
**Вечтомовой Юлии**

### В задании требуется:
1. Добиться, если вдруг это не так, чтобы данный код собирался локально.

2. вынести все классы, которые используются в шаблоне проектирования в отдельный файл или файлы, чтобы они могли быть протестированы.
```sh
┌──(kali㉿kali)-[~/projects]
└─$ mkdir Factory && cd Factory
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ mkdir -p src/game tests .github/workflows
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ touch src/game/{GameAgent.h,Tank.h,Factory.h,GameFactory.h,Game.h,Game.cpp,CMakeLists.txt}   
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ touch src/main.cpp
                                                                                                                                                      
┌──(kali㉿kali)-[~/projects/Factory]
└─$ touch .github/workflows/build.yml
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/GameAgent.h
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/Tank.h     
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/Factory.h
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/GameFactory.h
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/Game.h       
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/Game.cpp     
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/game/CMakeLists.txt
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano src/main.cpp           
                                                                                                                                                      
```

3. Сделать сборочный файл CMakeLists.txt, которой сделает статическую библиотеку с классами шаблона, а также исполняемый файл, как он и представлен в коде.
```sh
┌──(kali㉿kali)-[~/projects/Factory]
└─$ touch CMakeLists.txt

┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano CMakeLists.txt
```

4. Написать хотя бы один тест для каждого конкретного класса.
```sh
┌──(kali㉿kali)-[~/projects/Factory]
└─$ touch tests/{test_GameAgent.cpp,test_Tank.cpp,test_Factory.cpp,test_Game.cpp,CMakeLists.txt}

┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano tests/test_GameAgent.cpp
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano tests/test_Tank.cpp     
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano tests/test_Factory.cpp
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano tests/test_Game.cpp   
                                                                             
┌──(kali㉿kali)-[~/projects/Factory]
└─$ nano tests/CMakeLists.txt
```

5. Добавить этот тест в сборочный файл CMakeLists.txt, чтобы тест также собирался.
```sh
┌──(kali㉿kali)-[~/projects/Factory]
└─$ mkdir build && cd build
                                                                                                                                                         
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ cmake ..
-- The C compiler identification is GNU 14.2.0
-- The CXX compiler identification is GNU 14.2.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done (0.6s)
-- Generating done (0.0s)
-- Build files have been written to: /home/kali/projects/Factory/build
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ make
[  9%] Building CXX object src/game/CMakeFiles/game.dir/Tank.cpp.o
[ 18%] Building CXX object src/game/CMakeFiles/game.dir/GameFactory.cpp.o
[ 27%] Building CXX object src/game/CMakeFiles/game.dir/Game.cpp.o
[ 36%] Linking CXX static library libgame.a
[ 36%] Built target game
[ 45%] Building CXX object CMakeFiles/factory_game.dir/src/main.cpp.o
[ 54%] Linking CXX executable factory_game
[ 54%] Built target factory_game
[ 63%] Building CXX object tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o
[ 72%] Building CXX object tests/CMakeFiles/tests.dir/test_Tank.cpp.o
[ 81%] Building CXX object tests/CMakeFiles/tests.dir/test_Factory.cpp.o
[ 90%] Building CXX object tests/CMakeFiles/tests.dir/test_Game.cpp.o
[100%] Linking CXX executable tests
[100%] Built target tests
```

6. Написать скрипт github action, чтобы весь код и тесты собирались удаленно на github. Также собранные файлы нужно в пакет исполняемых файлов deb на ubuntu-latest.
```sh
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ sudo apt install -y dpkg-dev debhelper
[sudo] password for kali: 
dpkg-dev is already the newest version (1.22.18+kali1).
dpkg-dev set to manually installed.
The following packages were automatically installed and are no longer required:
  icu-devtools           python3-aioconsole
  libflac12t64           python3-dunamai
  libfuse3-3             python3-nfsclient
  libgeos3.13.0          python3-poetry-dynamic-versioning
  libglapi-mesa          python3-pywerview
  libicu-dev             python3-requests-ntlm
  liblbfgsb0             python3-setproctitle
  libpoppler145          python3-tomlkit
  libpython3.12-minimal  python3.12-tk
  libpython3.12-stdlib   ruby-zeitwerk
  libpython3.12t64       sphinx-rtd-theme-common
  libutempter0           strongswan
Use 'sudo apt autoremove' to remove them.

Installing:
  debhelper
                                                                             
Installing dependencies:
  autoconf                 libarchive-cpio-perl
  automake                 libdebhelper-perl                                 
  autopoint                libfile-stripnondeterminism-perl                  
  dh-autoreconf            libltdl-dev                                       
  dh-strip-nondeterminism  libmail-sendmail-perl                             
  dwz                      libsys-hostname-long-perl                         
  gettext                  libtool                                           
  intltool-debian          po-debconf                                        
                                                                             
Suggested packages:
  autoconf-archive  libasprintf-dev   | fortran95-compiler
  gnu-standards     libgettextpo-dev  gcj-jdk
  autoconf-doc      gnulib-l10n       libmail-box-perl
  dh-make           libtool-doc
  gettext-doc       gfortran

Summary:
  Upgrading: 0, Installing: 17, Removing: 0, Not Upgrading: 7
  Download size: 5,997 kB
  Space needed: 17.5 MB / 61.5 GB available

Get:1 http://kali.download/kali kali-rolling/main amd64 autoconf all 2.72-3.1 [494 kB]
Get:8 http://mirror.cspacehostings.com/kali kali-rolling/main amd64 dh-strip-nondeterminism all 1.14.1-2 [8,620 B]
Get:7 http://mirror.amuksa.com/kali kali-rolling/main amd64 libfile-stripnondeterminism-perl all 1.14.1-2 [19.7 kB]
Get:10 http://mirror.cspacehostings.com/kali kali-rolling/main amd64 gettext amd64 0.23.1-2 [1,680 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 automake all 1:1.17-4 [862 kB]
Get:3 http://kali.download/kali kali-rolling/main amd64 autopoint all 0.23.1-2 [770 kB]
Get:4 http://kali.download/kali kali-rolling/main amd64 libdebhelper-perl all 13.24.2 [90.9 kB]
Get:5 http://kali.download/kali kali-rolling/main amd64 libtool all 2.5.4-4 [539 kB]
Get:6 http://kali.download/kali kali-rolling/main amd64 dh-autoreconf all 20 [17.1 kB]
Get:9 http://http.kali.org/kali kali-rolling/main amd64 dwz amd64 0.15-1+b1 [110 kB]
Get:11 http://http.kali.org/kali kali-rolling/main amd64 intltool-debian all 0.35.0+20060710.6 [22.9 kB]
Get:12 http://http.kali.org/kali kali-rolling/main amd64 po-debconf all 1.0.21+nmu1 [248 kB]
Get:13 http://kali.download/kali kali-rolling/main amd64 debhelper all 13.24.2 [919 kB]
Get:14 http://kali.download/kali kali-rolling/main amd64 libarchive-cpio-perl all 0.10-3 [10.8 kB]
Get:15 http://kali.download/kali kali-rolling/main amd64 libltdl-dev amd64 2.5.4-4 [168 kB]
Get:16 http://kali.download/kali kali-rolling/main amd64 libsys-hostname-long-perl all 1.5-3 [11.6 kB]
Get:17 http://kali.download/kali kali-rolling/main amd64 libmail-sendmail-perl all 0.80-3 [24.3 kB]
Fetched 5,997 kB in 16s (384 kB/s)                                          
Selecting previously unselected package autoconf.
(Reading database ... 422729 files and directories currently installed.)
Preparing to unpack .../00-autoconf_2.72-3.1_all.deb ...
Unpacking autoconf (2.72-3.1) ...
Selecting previously unselected package automake.
Preparing to unpack .../01-automake_1%3a1.17-4_all.deb ...
Unpacking automake (1:1.17-4) ...
Selecting previously unselected package autopoint.
Preparing to unpack .../02-autopoint_0.23.1-2_all.deb ...
Unpacking autopoint (0.23.1-2) ...
Selecting previously unselected package libdebhelper-perl.
Preparing to unpack .../03-libdebhelper-perl_13.24.2_all.deb ...
Unpacking libdebhelper-perl (13.24.2) ...
Selecting previously unselected package libtool.
Preparing to unpack .../04-libtool_2.5.4-4_all.deb ...
Unpacking libtool (2.5.4-4) ...
Selecting previously unselected package dh-autoreconf.
Preparing to unpack .../05-dh-autoreconf_20_all.deb ...
Unpacking dh-autoreconf (20) ...
Selecting previously unselected package libfile-stripnondeterminism-perl.
Preparing to unpack .../06-libfile-stripnondeterminism-perl_1.14.1-2_all.deb ...
Unpacking libfile-stripnondeterminism-perl (1.14.1-2) ...
Selecting previously unselected package dh-strip-nondeterminism.
Preparing to unpack .../07-dh-strip-nondeterminism_1.14.1-2_all.deb ...
Unpacking dh-strip-nondeterminism (1.14.1-2) ...
Selecting previously unselected package dwz.
Preparing to unpack .../08-dwz_0.15-1+b1_amd64.deb ...
Unpacking dwz (0.15-1+b1) ...
Selecting previously unselected package gettext.
Preparing to unpack .../09-gettext_0.23.1-2_amd64.deb ...
Unpacking gettext (0.23.1-2) ...
Selecting previously unselected package intltool-debian.
Preparing to unpack .../10-intltool-debian_0.35.0+20060710.6_all.deb ...
Unpacking intltool-debian (0.35.0+20060710.6) ...
Selecting previously unselected package po-debconf.
Preparing to unpack .../11-po-debconf_1.0.21+nmu1_all.deb ...
Unpacking po-debconf (1.0.21+nmu1) ...
Selecting previously unselected package debhelper.
Preparing to unpack .../12-debhelper_13.24.2_all.deb ...
Unpacking debhelper (13.24.2) ...
Selecting previously unselected package libarchive-cpio-perl.
Preparing to unpack .../13-libarchive-cpio-perl_0.10-3_all.deb ...
Unpacking libarchive-cpio-perl (0.10-3) ...
Selecting previously unselected package libltdl-dev:amd64.
Preparing to unpack .../14-libltdl-dev_2.5.4-4_amd64.deb ...
Unpacking libltdl-dev:amd64 (2.5.4-4) ...
Selecting previously unselected package libsys-hostname-long-perl.
Preparing to unpack .../15-libsys-hostname-long-perl_1.5-3_all.deb ...
Unpacking libsys-hostname-long-perl (1.5-3) ...
Selecting previously unselected package libmail-sendmail-perl.
Preparing to unpack .../16-libmail-sendmail-perl_0.80-3_all.deb ...
Unpacking libmail-sendmail-perl (0.80-3) ...
Setting up libfile-stripnondeterminism-perl (1.14.1-2) ...
Setting up gettext (0.23.1-2) ...
Setting up libtool (2.5.4-4) ...
Setting up libdebhelper-perl (13.24.2) ...
Setting up intltool-debian (0.35.0+20060710.6) ...
Setting up autopoint (0.23.1-2) ...
Setting up autoconf (2.72-3.1) ...
Setting up dh-strip-nondeterminism (1.14.1-2) ...
Setting up dwz (0.15-1+b1) ...
Setting up libarchive-cpio-perl (0.10-3) ...
Setting up libsys-hostname-long-perl (1.5-3) ...
Setting up automake (1:1.17-4) ...
update-alternatives: using /usr/bin/automake-1.17 to provide /usr/bin/automake (automake) in auto mode
Setting up po-debconf (1.0.21+nmu1) ...
Setting up dh-autoreconf (20) ...
Setting up libmail-sendmail-perl (0.80-3) ...
Setting up libltdl-dev:amd64 (2.5.4-4) ...
Setting up debhelper (13.24.2) ...
Processing triggers for kali-menu (2025.2.7) ...
Processing triggers for doc-base (0.11.2) ...
Processing 2 added doc-base files...
Processing triggers for libc-bin (2.41-6) ...
Processing triggers for man-db (2.13.1-1) ...
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ mkdir -p factory-game/usr/local/bin factory-game/DEBIAN
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ cp factory_game factory-game/usr/local/bin/
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Package: factory-game" > factory-game/DEBIAN/control     
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Version: 1.0" >> factory-game/DEBIAN/control
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Section: games" >> factory-game/DEBIAN/control
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Priority: optional" >> factory-game/DEBIAN/control
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Architecture: amd64" >> factory-game/DEBIAN/control
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Maintainer: empty4 shpilka05@mail.ru" >> factory-game/DEBIAN/control
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ echo "Description: Simple tank game" >> factory-game/DEBIAN/control

┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ dpkg-deb --build factory-game
dpkg-deb: warning: root directory factory-game has unusual owner or group 1000:1000
dpkg-deb: hint: you might need to pass --root-owner-group, see <https://wiki.debian.org/Teams/Dpkg/RootlessBuilds> for further details
dpkg-deb: warning: ignoring 1 warning about the control file(s)
dpkg-deb: building package 'factory-game' in 'factory-game.deb'.
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ sudo dpkg -i factory-game.deb
[sudo] password for kali: 
Selecting previously unselected package factory-game.
(Reading database ... 423834 files and directories currently installed.)
Preparing to unpack factory-game.deb ...
Unpacking factory-game (1.0) ...
Setting up factory-game (1.0) ...

┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ git init
hint: Using 'master' as the name for the initial branch. This default branch name                                                                         
hint: is subject to change. To configure the initial branch name to use in all                                                                            
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
Initialized empty Git repository in /home/kali/projects/Factory/build/.git/
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ git add .
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ git commit -m "Initial commit"
[master (root-commit) 4217620] Initial commit
 83 files changed, 6609 insertions(+)
 create mode 100644 CMakeCache.txt
 create mode 100644 CMakeFiles/3.31.6/CMakeCCompiler.cmake
 create mode 100644 CMakeFiles/3.31.6/CMakeCXXCompiler.cmake
 create mode 100755 CMakeFiles/3.31.6/CMakeDetermineCompilerABI_C.bin
 create mode 100755 CMakeFiles/3.31.6/CMakeDetermineCompilerABI_CXX.bin
 create mode 100644 CMakeFiles/3.31.6/CMakeSystem.cmake
 create mode 100644 CMakeFiles/3.31.6/CompilerIdC/CMakeCCompilerId.c
 create mode 100755 CMakeFiles/3.31.6/CompilerIdC/a.out
 create mode 100644 CMakeFiles/3.31.6/CompilerIdCXX/CMakeCXXCompilerId.cpp
 create mode 100755 CMakeFiles/3.31.6/CompilerIdCXX/a.out
 create mode 100644 CMakeFiles/CMakeConfigureLog.yaml
 create mode 100644 CMakeFiles/CMakeDirectoryInformation.cmake
 create mode 100644 CMakeFiles/Makefile.cmake
 create mode 100644 CMakeFiles/Makefile2
 create mode 100644 CMakeFiles/TargetDirectories.txt
 create mode 100644 CMakeFiles/cmake.check_cache
 create mode 100644 CMakeFiles/factory_game.dir/DependInfo.cmake
 create mode 100644 CMakeFiles/factory_game.dir/build.make
 create mode 100644 CMakeFiles/factory_game.dir/cmake_clean.cmake
 create mode 100644 CMakeFiles/factory_game.dir/compiler_depend.make
 create mode 100644 CMakeFiles/factory_game.dir/compiler_depend.ts
 create mode 100644 CMakeFiles/factory_game.dir/depend.make
 create mode 100644 CMakeFiles/factory_game.dir/flags.make
 create mode 100644 CMakeFiles/factory_game.dir/link.d
 create mode 100644 CMakeFiles/factory_game.dir/link.txt
 create mode 100644 CMakeFiles/factory_game.dir/progress.make
 create mode 100644 CMakeFiles/factory_game.dir/src/main.cpp.o
 create mode 100644 CMakeFiles/factory_game.dir/src/main.cpp.o.d
 create mode 100644 CMakeFiles/progress.marks
 create mode 100644 CTestTestfile.cmake
 create mode 100644 Makefile
 create mode 100644 Testing/Temporary/CTestCostData.txt
 create mode 100644 Testing/Temporary/LastTest.log
 create mode 100644 cmake_install.cmake
 create mode 100644 factory-game.deb
 create mode 100644 factory-game/DEBIAN/control
 create mode 100755 factory-game/usr/local/bin/factory_game
 create mode 100755 factory_game
 create mode 100644 src/game/CMakeFiles/CMakeDirectoryInformation.cmake
 create mode 100644 src/game/CMakeFiles/game.dir/DependInfo.cmake
 create mode 100644 src/game/CMakeFiles/game.dir/Game.cpp.o
 create mode 100644 src/game/CMakeFiles/game.dir/Game.cpp.o.d
 create mode 100644 src/game/CMakeFiles/game.dir/GameFactory.cpp.o
 create mode 100644 src/game/CMakeFiles/game.dir/GameFactory.cpp.o.d
 create mode 100644 src/game/CMakeFiles/game.dir/Tank.cpp.o
 create mode 100644 src/game/CMakeFiles/game.dir/Tank.cpp.o.d
 create mode 100644 src/game/CMakeFiles/game.dir/build.make
 create mode 100644 src/game/CMakeFiles/game.dir/cmake_clean.cmake
 create mode 100644 src/game/CMakeFiles/game.dir/cmake_clean_target.cmake
 create mode 100644 src/game/CMakeFiles/game.dir/compiler_depend.make
 create mode 100644 src/game/CMakeFiles/game.dir/compiler_depend.ts
 create mode 100644 src/game/CMakeFiles/game.dir/depend.make
 create mode 100644 src/game/CMakeFiles/game.dir/flags.make
 create mode 100644 src/game/CMakeFiles/game.dir/link.txt
 create mode 100644 src/game/CMakeFiles/game.dir/progress.make
 create mode 100644 src/game/CMakeFiles/progress.marks
 create mode 100644 src/game/Makefile
 create mode 100644 src/game/cmake_install.cmake
 create mode 100644 src/game/libgame.a
 create mode 100644 tests/CMakeFiles/CMakeDirectoryInformation.cmake
 create mode 100644 tests/CMakeFiles/progress.marks
 create mode 100644 tests/CMakeFiles/tests.dir/DependInfo.cmake
 create mode 100644 tests/CMakeFiles/tests.dir/build.make
 create mode 100644 tests/CMakeFiles/tests.dir/cmake_clean.cmake
 create mode 100644 tests/CMakeFiles/tests.dir/compiler_depend.make
 create mode 100644 tests/CMakeFiles/tests.dir/compiler_depend.ts
 create mode 100644 tests/CMakeFiles/tests.dir/depend.make
 create mode 100644 tests/CMakeFiles/tests.dir/flags.make
 create mode 100644 tests/CMakeFiles/tests.dir/link.d
 create mode 100644 tests/CMakeFiles/tests.dir/link.txt
 create mode 100644 tests/CMakeFiles/tests.dir/progress.make
 create mode 100644 tests/CMakeFiles/tests.dir/test_Factory.cpp.o
 create mode 100644 tests/CMakeFiles/tests.dir/test_Factory.cpp.o.d
 create mode 100644 tests/CMakeFiles/tests.dir/test_Game.cpp.o
 create mode 100644 tests/CMakeFiles/tests.dir/test_Game.cpp.o.d
 create mode 100644 tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o
 create mode 100644 tests/CMakeFiles/tests.dir/test_GameAgent.cpp.o.d
 create mode 100644 tests/CMakeFiles/tests.dir/test_Tank.cpp.o
 create mode 100644 tests/CMakeFiles/tests.dir/test_Tank.cpp.o.d
 create mode 100644 tests/CTestTestfile.cmake
 create mode 100644 tests/Makefile
 create mode 100644 tests/cmake_install.cmake
 create mode 100755 tests/tests

┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ git remote set-url origin git@github.com:empty4/Factory.git

┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ git push -u origin main
branch 'main' set up to track 'origin/main'.
Everything up-to-date
```

```sh
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ ctest --output-on-failure
Test project /home/kali/projects/Factory/build
    Start 1: tests
1/1 Test #1: tests ............................   Passed    0.01 sec

100% tests passed, 0 tests failed out of 1

Total Test time (real) =   0.02 sec
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ ./tests/tests
Running main() from ./googletest/src/gtest_main.cc
[==========] Running 4 tests from 4 test suites.
[----------] Global test environment set-up.
[----------] 1 test from GameAgentTest
[ RUN      ] GameAgentTest.InterfaceTest
[       OK ] GameAgentTest.InterfaceTest (0 ms)
[----------] 1 test from GameAgentTest (0 ms total)

[----------] 1 test from TankTest
[ RUN      ] TankTest.GotShotTest
[       OK ] TankTest.GotShotTest (0 ms)
[----------] 1 test from TankTest (0 ms total)

[----------] 1 test from FactoryTest
[ RUN      ] FactoryTest.InterfaceTest
[       OK ] FactoryTest.InterfaceTest (0 ms)
[----------] 1 test from FactoryTest (0 ms total)

[----------] 1 test from GameTest
[ RUN      ] GameTest.InitializationTest
[       OK ] GameTest.InitializationTest (0 ms)
[----------] 1 test from GameTest (0 ms total)

[----------] Global test environment tear-down
[==========] 4 tests from 4 test suites ran. (0 ms total)
[  PASSED  ] 4 tests.
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ ./factory_game
game started!
start level 1
enter shoot position 1-9: 
3
enter shoot position 1-9: 
5
enter shoot position 1-9: 
2
enter shoot position 1-9: 
7
enter shoot position 1-9: 
4
enter shoot position 1-9: 
6
your score: 2
game over!
```

7. Собранный пакет прикрепить в виде Release к проекту.
```sh
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ mkdir -p factory-game/usr/local/games
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ cp factory_game factory-game/usr/local/games/
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ chmod 755 factory-game/usr/local/games/factory_game
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ mkdir -p factory-game/DEBIAN
cat > factory-game/DEBIAN/control <<EOF
Package: factory-game
Version: 1.0
Section: games
Priority: optional
Architecture: amd64
Maintainer: empty4 shpilka05@mail.ru        
Description: Танковая игра с использованием паттерна "Фабрика"
EOF
                                                                             
┌──(kali㉿kali)-[~/projects/Factory/build]
└─$ dpkg-deb --build --root-owner-group factory-game
dpkg-deb: building package 'factory-game' in 'factory-game.deb'.
```

