# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vinhnt/cli

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vinhnt/cli

# Include any dependencies generated for this target.
include vtysh/CMakeFiles/cli.dir/depend.make

# Include the progress variables for this target.
include vtysh/CMakeFiles/cli.dir/progress.make

# Include the compile flags for this target's objects.
include vtysh/CMakeFiles/cli.dir/flags.make

vtysh/CMakeFiles/cli.dir/vtysh_main.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_main.c.o: vtysh/vtysh_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_main.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_main.c.o   -c /home/vinhnt/cli/vtysh/vtysh_main.c

vtysh/CMakeFiles/cli.dir/vtysh_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_main.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_main.c > CMakeFiles/cli.dir/vtysh_main.c.i

vtysh/CMakeFiles/cli.dir/vtysh_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_main.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_main.c -o CMakeFiles/cli.dir/vtysh_main.c.s

vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_main.c.o


vtysh/CMakeFiles/cli.dir/vtysh.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh.c.o: vtysh/vtysh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object vtysh/CMakeFiles/cli.dir/vtysh.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh.c.o   -c /home/vinhnt/cli/vtysh/vtysh.c

vtysh/CMakeFiles/cli.dir/vtysh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh.c > CMakeFiles/cli.dir/vtysh.c.i

vtysh/CMakeFiles/cli.dir/vtysh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh.c -o CMakeFiles/cli.dir/vtysh.c.s

vtysh/CMakeFiles/cli.dir/vtysh.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh.c.o


vtysh/CMakeFiles/cli.dir/vtysh_user.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_user.c.o: vtysh/vtysh_user.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_user.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_user.c.o   -c /home/vinhnt/cli/vtysh/vtysh_user.c

vtysh/CMakeFiles/cli.dir/vtysh_user.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_user.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_user.c > CMakeFiles/cli.dir/vtysh_user.c.i

vtysh/CMakeFiles/cli.dir/vtysh_user.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_user.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_user.c -o CMakeFiles/cli.dir/vtysh_user.c.s

vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_user.c.o


vtysh/CMakeFiles/cli.dir/vtysh_config.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_config.c.o: vtysh/vtysh_config.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_config.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_config.c.o   -c /home/vinhnt/cli/vtysh/vtysh_config.c

vtysh/CMakeFiles/cli.dir/vtysh_config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_config.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_config.c > CMakeFiles/cli.dir/vtysh_config.c.i

vtysh/CMakeFiles/cli.dir/vtysh_config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_config.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_config.c -o CMakeFiles/cli.dir/vtysh_config.c.s

vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_config.c.o


vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o: vtysh/vtysh_cmd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_cmd.c.o   -c /home/vinhnt/cli/vtysh/vtysh_cmd.c

vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_cmd.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_cmd.c > CMakeFiles/cli.dir/vtysh_cmd.c.i

vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_cmd.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_cmd.c -o CMakeFiles/cli.dir/vtysh_cmd.c.s

vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o


vtysh/CMakeFiles/cli.dir/vtysh_show.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_show.c.o: vtysh/vtysh_show.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_show.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_show.c.o   -c /home/vinhnt/cli/vtysh/vtysh_show.c

vtysh/CMakeFiles/cli.dir/vtysh_show.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_show.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_show.c > CMakeFiles/cli.dir/vtysh_show.c.i

vtysh/CMakeFiles/cli.dir/vtysh_show.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_show.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_show.c -o CMakeFiles/cli.dir/vtysh_show.c.s

vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_show.c.o


vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o: vtysh/vtysh_linux.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_linux.c.o   -c /home/vinhnt/cli/vtysh/vtysh_linux.c

vtysh/CMakeFiles/cli.dir/vtysh_linux.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_linux.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_linux.c > CMakeFiles/cli.dir/vtysh_linux.c.i

vtysh/CMakeFiles/cli.dir/vtysh_linux.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_linux.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_linux.c -o CMakeFiles/cli.dir/vtysh_linux.c.s

vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o


vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o: vtysh/vtysh_dhcp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_dhcp.c.o   -c /home/vinhnt/cli/vtysh/vtysh_dhcp.c

vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_dhcp.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_dhcp.c > CMakeFiles/cli.dir/vtysh_dhcp.c.i

vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_dhcp.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_dhcp.c -o CMakeFiles/cli.dir/vtysh_dhcp.c.s

vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o


vtysh/CMakeFiles/cli.dir/vtysh_if.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_if.c.o: vtysh/vtysh_if.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_if.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_if.c.o   -c /home/vinhnt/cli/vtysh/vtysh_if.c

vtysh/CMakeFiles/cli.dir/vtysh_if.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_if.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_if.c > CMakeFiles/cli.dir/vtysh_if.c.i

vtysh/CMakeFiles/cli.dir/vtysh_if.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_if.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_if.c -o CMakeFiles/cli.dir/vtysh_if.c.s

vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_if.c.o


vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o: vtysh/vtysh_upgrade.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_upgrade.c.o   -c /home/vinhnt/cli/vtysh/vtysh_upgrade.c

vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_upgrade.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_upgrade.c > CMakeFiles/cli.dir/vtysh_upgrade.c.i

vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_upgrade.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_upgrade.c -o CMakeFiles/cli.dir/vtysh_upgrade.c.s

vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o


vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o: vtysh/vtysh_arp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_arp.c.o   -c /home/vinhnt/cli/vtysh/vtysh_arp.c

vtysh/CMakeFiles/cli.dir/vtysh_arp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_arp.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_arp.c > CMakeFiles/cli.dir/vtysh_arp.c.i

vtysh/CMakeFiles/cli.dir/vtysh_arp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_arp.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_arp.c -o CMakeFiles/cli.dir/vtysh_arp.c.s

vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o


vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o: vtysh/vtysh_bgp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_bgp.c.o   -c /home/vinhnt/cli/vtysh/vtysh_bgp.c

vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_bgp.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_bgp.c > CMakeFiles/cli.dir/vtysh_bgp.c.i

vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_bgp.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_bgp.c -o CMakeFiles/cli.dir/vtysh_bgp.c.s

vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o


vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o: vtysh/CMakeFiles/cli.dir/flags.make
vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o: vtysh/vtysh_ip_pipeline.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o   -c /home/vinhnt/cli/vtysh/vtysh_ip_pipeline.c

vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cli.dir/vtysh_ip_pipeline.c.i"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vinhnt/cli/vtysh/vtysh_ip_pipeline.c > CMakeFiles/cli.dir/vtysh_ip_pipeline.c.i

vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cli.dir/vtysh_ip_pipeline.c.s"
	cd /home/vinhnt/cli/vtysh && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vinhnt/cli/vtysh/vtysh_ip_pipeline.c -o CMakeFiles/cli.dir/vtysh_ip_pipeline.c.s

vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.requires:

.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.requires

vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.provides: vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.requires
	$(MAKE) -f vtysh/CMakeFiles/cli.dir/build.make vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.provides.build
.PHONY : vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.provides

vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.provides.build: vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o


# Object files for target cli
cli_OBJECTS = \
"CMakeFiles/cli.dir/vtysh_main.c.o" \
"CMakeFiles/cli.dir/vtysh.c.o" \
"CMakeFiles/cli.dir/vtysh_user.c.o" \
"CMakeFiles/cli.dir/vtysh_config.c.o" \
"CMakeFiles/cli.dir/vtysh_cmd.c.o" \
"CMakeFiles/cli.dir/vtysh_show.c.o" \
"CMakeFiles/cli.dir/vtysh_linux.c.o" \
"CMakeFiles/cli.dir/vtysh_dhcp.c.o" \
"CMakeFiles/cli.dir/vtysh_if.c.o" \
"CMakeFiles/cli.dir/vtysh_upgrade.c.o" \
"CMakeFiles/cli.dir/vtysh_arp.c.o" \
"CMakeFiles/cli.dir/vtysh_bgp.c.o" \
"CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o"

# External object files for target cli
cli_EXTERNAL_OBJECTS =

vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_main.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_user.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_config.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_show.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_if.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o
vtysh/cli: vtysh/CMakeFiles/cli.dir/build.make
vtysh/cli: lib/libsonic-cli.so.0
vtysh/cli: vtysh/CMakeFiles/cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vinhnt/cli/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable cli"
	cd /home/vinhnt/cli/vtysh && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vtysh/CMakeFiles/cli.dir/build: vtysh/cli

.PHONY : vtysh/CMakeFiles/cli.dir/build

vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_main.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_user.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_config.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_cmd.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_show.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_linux.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_dhcp.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_if.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_upgrade.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_arp.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_bgp.c.o.requires
vtysh/CMakeFiles/cli.dir/requires: vtysh/CMakeFiles/cli.dir/vtysh_ip_pipeline.c.o.requires

.PHONY : vtysh/CMakeFiles/cli.dir/requires

vtysh/CMakeFiles/cli.dir/clean:
	cd /home/vinhnt/cli/vtysh && $(CMAKE_COMMAND) -P CMakeFiles/cli.dir/cmake_clean.cmake
.PHONY : vtysh/CMakeFiles/cli.dir/clean

vtysh/CMakeFiles/cli.dir/depend:
	cd /home/vinhnt/cli && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vinhnt/cli /home/vinhnt/cli/vtysh /home/vinhnt/cli /home/vinhnt/cli/vtysh /home/vinhnt/cli/vtysh/CMakeFiles/cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vtysh/CMakeFiles/cli.dir/depend

