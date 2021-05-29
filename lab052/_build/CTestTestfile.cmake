# CMake generated Testfile for 
# Source directory: /home/anya/navckin/workspace/projects/lab051
# Build directory: /home/anya/navckin/workspace/projects/lab051/_build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(check "/home/anya/navckin/workspace/projects/lab051/_build/check")
set_tests_properties(check PROPERTIES  _BACKTRACE_TRIPLES "/home/anya/navckin/workspace/projects/lab051/CMakeLists.txt;44;add_test;/home/anya/navckin/workspace/projects/lab051/CMakeLists.txt;0;")
subdirs("third-party/gtest")
