# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2024.2.1\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2024.2.1\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RaycasterEngineOpenGL.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RaycasterEngineOpenGL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RaycasterEngineOpenGL.dir/flags.make

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj: CMakeFiles/RaycasterEngineOpenGL.dir/flags.make
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj: CMakeFiles/RaycasterEngineOpenGL.dir/includes_C.rsp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj: C:/Users/Ahmed/Documents/GitHub/RaycasterEngineOpenGL/RaycasterProject/glad.c
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj: CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj -MF CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\glad.c.obj.d -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\glad.c.obj -c C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\glad.c

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\glad.c > CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\glad.c.i

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\glad.c -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\glad.c.s

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/flags.make
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/includes_CXX.rsp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj: C:/Users/Ahmed/Documents/GitHub/RaycasterEngineOpenGL/RaycasterProject/main.cpp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj -MF CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\main.cpp.obj.d -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\main.cpp.obj -c C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\main.cpp

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\main.cpp > CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\main.cpp.i

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\main.cpp -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\main.cpp.s

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/flags.make
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/includes_CXX.rsp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj: C:/Users/Ahmed/Documents/GitHub/RaycasterEngineOpenGL/RaycasterProject/Map.cpp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj -MF CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Map.cpp.obj.d -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Map.cpp.obj -c C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Map.cpp

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Map.cpp > CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Map.cpp.i

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Map.cpp -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Map.cpp.s

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/flags.make
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/includes_CXX.rsp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj: C:/Users/Ahmed/Documents/GitHub/RaycasterEngineOpenGL/RaycasterProject/Player.cpp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj -MF CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Player.cpp.obj.d -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Player.cpp.obj -c C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Player.cpp

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Player.cpp > CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Player.cpp.i

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Player.cpp -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Player.cpp.s

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/flags.make
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/includes_CXX.rsp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj: C:/Users/Ahmed/Documents/GitHub/RaycasterEngineOpenGL/RaycasterProject/Ray3D.cpp
CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj: CMakeFiles/RaycasterEngineOpenGL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj -MF CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Ray3D.cpp.obj.d -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Ray3D.cpp.obj -c C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Ray3D.cpp

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Ray3D.cpp > CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Ray3D.cpp.i

CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.1\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\RaycasterProject\Ray3D.cpp -o CMakeFiles\RaycasterEngineOpenGL.dir\RaycasterProject\Ray3D.cpp.s

# Object files for target RaycasterEngineOpenGL
RaycasterEngineOpenGL_OBJECTS = \
"CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj" \
"CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj" \
"CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj" \
"CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj" \
"CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj"

# External object files for target RaycasterEngineOpenGL
RaycasterEngineOpenGL_EXTERNAL_OBJECTS =

RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/glad.c.obj
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/main.cpp.obj
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Map.cpp.obj
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Player.cpp.obj
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/RaycasterProject/Ray3D.cpp.obj
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/build.make
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/linkLibs.rsp
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/objects1.rsp
RaycasterEngineOpenGL.exe: CMakeFiles/RaycasterEngineOpenGL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable RaycasterEngineOpenGL.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RaycasterEngineOpenGL.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RaycasterEngineOpenGL.dir/build: RaycasterEngineOpenGL.exe
.PHONY : CMakeFiles/RaycasterEngineOpenGL.dir/build

CMakeFiles/RaycasterEngineOpenGL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RaycasterEngineOpenGL.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RaycasterEngineOpenGL.dir/clean

CMakeFiles/RaycasterEngineOpenGL.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug C:\Users\Ahmed\Documents\GitHub\RaycasterEngineOpenGL\cmake-build-debug\CMakeFiles\RaycasterEngineOpenGL.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RaycasterEngineOpenGL.dir/depend

