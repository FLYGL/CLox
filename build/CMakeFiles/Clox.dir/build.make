# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\11577\Desktop\interpreter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\11577\Desktop\interpreter\build

# Include any dependencies generated for this target.
include CMakeFiles/Clox.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Clox.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Clox.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Clox.dir/flags.make

CMakeFiles/Clox.dir/main.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/main.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/main.c.obj: ../main.c
CMakeFiles/Clox.dir/main.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Clox.dir/main.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/main.c.obj -MF CMakeFiles\Clox.dir\main.c.obj.d -o CMakeFiles\Clox.dir\main.c.obj -c C:\Users\11577\Desktop\interpreter\main.c

CMakeFiles/Clox.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/main.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\main.c > CMakeFiles\Clox.dir\main.c.i

CMakeFiles/Clox.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/main.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\main.c -o CMakeFiles\Clox.dir\main.c.s

CMakeFiles/Clox.dir/src/chunk.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/chunk.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/chunk.c.obj: ../src/chunk.c
CMakeFiles/Clox.dir/src/chunk.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Clox.dir/src/chunk.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/chunk.c.obj -MF CMakeFiles\Clox.dir\src\chunk.c.obj.d -o CMakeFiles\Clox.dir\src\chunk.c.obj -c C:\Users\11577\Desktop\interpreter\src\chunk.c

CMakeFiles/Clox.dir/src/chunk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/chunk.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\chunk.c > CMakeFiles\Clox.dir\src\chunk.c.i

CMakeFiles/Clox.dir/src/chunk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/chunk.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\chunk.c -o CMakeFiles\Clox.dir\src\chunk.c.s

CMakeFiles/Clox.dir/src/compile.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/compile.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/compile.c.obj: ../src/compile.c
CMakeFiles/Clox.dir/src/compile.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Clox.dir/src/compile.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/compile.c.obj -MF CMakeFiles\Clox.dir\src\compile.c.obj.d -o CMakeFiles\Clox.dir\src\compile.c.obj -c C:\Users\11577\Desktop\interpreter\src\compile.c

CMakeFiles/Clox.dir/src/compile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/compile.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\compile.c > CMakeFiles\Clox.dir\src\compile.c.i

CMakeFiles/Clox.dir/src/compile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/compile.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\compile.c -o CMakeFiles\Clox.dir\src\compile.c.s

CMakeFiles/Clox.dir/src/debug.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/debug.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/debug.c.obj: ../src/debug.c
CMakeFiles/Clox.dir/src/debug.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Clox.dir/src/debug.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/debug.c.obj -MF CMakeFiles\Clox.dir\src\debug.c.obj.d -o CMakeFiles\Clox.dir\src\debug.c.obj -c C:\Users\11577\Desktop\interpreter\src\debug.c

CMakeFiles/Clox.dir/src/debug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/debug.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\debug.c > CMakeFiles\Clox.dir\src\debug.c.i

CMakeFiles/Clox.dir/src/debug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/debug.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\debug.c -o CMakeFiles\Clox.dir\src\debug.c.s

CMakeFiles/Clox.dir/src/memory.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/memory.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/memory.c.obj: ../src/memory.c
CMakeFiles/Clox.dir/src/memory.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Clox.dir/src/memory.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/memory.c.obj -MF CMakeFiles\Clox.dir\src\memory.c.obj.d -o CMakeFiles\Clox.dir\src\memory.c.obj -c C:\Users\11577\Desktop\interpreter\src\memory.c

CMakeFiles/Clox.dir/src/memory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/memory.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\memory.c > CMakeFiles\Clox.dir\src\memory.c.i

CMakeFiles/Clox.dir/src/memory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/memory.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\memory.c -o CMakeFiles\Clox.dir\src\memory.c.s

CMakeFiles/Clox.dir/src/object.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/object.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/object.c.obj: ../src/object.c
CMakeFiles/Clox.dir/src/object.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Clox.dir/src/object.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/object.c.obj -MF CMakeFiles\Clox.dir\src\object.c.obj.d -o CMakeFiles\Clox.dir\src\object.c.obj -c C:\Users\11577\Desktop\interpreter\src\object.c

CMakeFiles/Clox.dir/src/object.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/object.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\object.c > CMakeFiles\Clox.dir\src\object.c.i

CMakeFiles/Clox.dir/src/object.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/object.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\object.c -o CMakeFiles\Clox.dir\src\object.c.s

CMakeFiles/Clox.dir/src/scanner.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/scanner.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/scanner.c.obj: ../src/scanner.c
CMakeFiles/Clox.dir/src/scanner.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Clox.dir/src/scanner.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/scanner.c.obj -MF CMakeFiles\Clox.dir\src\scanner.c.obj.d -o CMakeFiles\Clox.dir\src\scanner.c.obj -c C:\Users\11577\Desktop\interpreter\src\scanner.c

CMakeFiles/Clox.dir/src/scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/scanner.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\scanner.c > CMakeFiles\Clox.dir\src\scanner.c.i

CMakeFiles/Clox.dir/src/scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/scanner.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\scanner.c -o CMakeFiles\Clox.dir\src\scanner.c.s

CMakeFiles/Clox.dir/src/value.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/value.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/value.c.obj: ../src/value.c
CMakeFiles/Clox.dir/src/value.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Clox.dir/src/value.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/value.c.obj -MF CMakeFiles\Clox.dir\src\value.c.obj.d -o CMakeFiles\Clox.dir\src\value.c.obj -c C:\Users\11577\Desktop\interpreter\src\value.c

CMakeFiles/Clox.dir/src/value.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/value.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\value.c > CMakeFiles\Clox.dir\src\value.c.i

CMakeFiles/Clox.dir/src/value.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/value.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\value.c -o CMakeFiles\Clox.dir\src\value.c.s

CMakeFiles/Clox.dir/src/vm.c.obj: CMakeFiles/Clox.dir/flags.make
CMakeFiles/Clox.dir/src/vm.c.obj: CMakeFiles/Clox.dir/includes_C.rsp
CMakeFiles/Clox.dir/src/vm.c.obj: ../src/vm.c
CMakeFiles/Clox.dir/src/vm.c.obj: CMakeFiles/Clox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Clox.dir/src/vm.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Clox.dir/src/vm.c.obj -MF CMakeFiles\Clox.dir\src\vm.c.obj.d -o CMakeFiles\Clox.dir\src\vm.c.obj -c C:\Users\11577\Desktop\interpreter\src\vm.c

CMakeFiles/Clox.dir/src/vm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Clox.dir/src/vm.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\11577\Desktop\interpreter\src\vm.c > CMakeFiles\Clox.dir\src\vm.c.i

CMakeFiles/Clox.dir/src/vm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Clox.dir/src/vm.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-W\mingw64\bin\X8EAA8~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\11577\Desktop\interpreter\src\vm.c -o CMakeFiles\Clox.dir\src\vm.c.s

# Object files for target Clox
Clox_OBJECTS = \
"CMakeFiles/Clox.dir/main.c.obj" \
"CMakeFiles/Clox.dir/src/chunk.c.obj" \
"CMakeFiles/Clox.dir/src/compile.c.obj" \
"CMakeFiles/Clox.dir/src/debug.c.obj" \
"CMakeFiles/Clox.dir/src/memory.c.obj" \
"CMakeFiles/Clox.dir/src/object.c.obj" \
"CMakeFiles/Clox.dir/src/scanner.c.obj" \
"CMakeFiles/Clox.dir/src/value.c.obj" \
"CMakeFiles/Clox.dir/src/vm.c.obj"

# External object files for target Clox
Clox_EXTERNAL_OBJECTS =

Clox.exe: CMakeFiles/Clox.dir/main.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/chunk.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/compile.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/debug.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/memory.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/object.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/scanner.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/value.c.obj
Clox.exe: CMakeFiles/Clox.dir/src/vm.c.obj
Clox.exe: CMakeFiles/Clox.dir/build.make
Clox.exe: CMakeFiles/Clox.dir/linklibs.rsp
Clox.exe: CMakeFiles/Clox.dir/objects1.rsp
Clox.exe: CMakeFiles/Clox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\11577\Desktop\interpreter\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C executable Clox.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Clox.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Clox.dir/build: Clox.exe
.PHONY : CMakeFiles/Clox.dir/build

CMakeFiles/Clox.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Clox.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Clox.dir/clean

CMakeFiles/Clox.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\11577\Desktop\interpreter C:\Users\11577\Desktop\interpreter C:\Users\11577\Desktop\interpreter\build C:\Users\11577\Desktop\interpreter\build C:\Users\11577\Desktop\interpreter\build\CMakeFiles\Clox.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Clox.dir/depend

