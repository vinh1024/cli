# Install script for directory: /home/vinhnt/cli/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/pkgconfig/sonic-cli.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/lib/pkgconfig" TYPE FILE FILES "/home/vinhnt/cli/lib/sonic-cli.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so.0"
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so.0.0.0"
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libsonic-cli.so.0;/usr/local/lib/libsonic-cli.so.0.0.0;/usr/local/lib/libsonic-cli.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES
    "/home/vinhnt/cli/lib/libsonic-cli.so.0"
    "/home/vinhnt/cli/lib/libsonic-cli.so.0.0.0"
    "/home/vinhnt/cli/lib/libsonic-cli.so"
    )
  foreach(file
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so.0"
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so.0.0.0"
      "$ENV{DESTDIR}/usr/local/lib/libsonic-cli.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/vtysh/buffer.h;/usr/local/include/vtysh/checksum.h;/usr/local/include/vtysh/command.h;/usr/local/include/vtysh/distribute.h;/usr/local/include/vtysh/config.h;/usr/local/include/vtysh/filter.h;/usr/local/include/vtysh/getopt.h;/usr/local/include/vtysh/hash.h;/usr/local/include/vtysh/if.h;/usr/local/include/vtysh/if_rmap.h;/usr/local/include/vtysh/jhash.h;/usr/local/include/vtysh/keychain.h;/usr/local/include/vtysh/libospf.h;/usr/local/include/vtysh/linklist.h;/usr/local/include/vtysh/log.h;/usr/local/include/vtysh/md5.h;/usr/local/include/vtysh/memory.h;/usr/local/include/vtysh/memtypes.h;/usr/local/include/vtysh/network.h;/usr/local/include/vtysh/plist.h;/usr/local/include/vtysh/pqueue.h;/usr/local/include/vtysh/prefix.h;/usr/local/include/vtysh/privs.h;/usr/local/include/vtysh/queue.h;/usr/local/include/vtysh/routemap.h;/usr/local/include/vtysh/regex-gnu.h;/usr/local/include/vtysh/sigevent.h;/usr/local/include/vtysh/smux.h;/usr/local/include/vtysh/sockopt.h;/usr/local/include/vtysh/sockunion.h;/usr/local/include/vtysh/stream.h;/usr/local/include/vtysh/str.h;/usr/local/include/vtysh/table.h;/usr/local/include/vtysh/thread.h;/usr/local/include/vtysh/vector.h;/usr/local/include/vtysh/vty.h;/usr/local/include/vtysh/workqueue.h;/usr/local/include/vtysh/zassert.h;/usr/local/include/vtysh/zclient.h;/usr/local/include/vtysh/zebra.h;/usr/local/include/vtysh/rbac.h;/usr/local/include/vtysh/authorization.h;/usr/local/include/vtysh/conn.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/vtysh" TYPE FILE FILES
    "/home/vinhnt/cli/lib/buffer.h"
    "/home/vinhnt/cli/lib/checksum.h"
    "/home/vinhnt/cli/lib/command.h"
    "/home/vinhnt/cli/lib/distribute.h"
    "/home/vinhnt/cli/lib/config.h"
    "/home/vinhnt/cli/lib/filter.h"
    "/home/vinhnt/cli/lib/getopt.h"
    "/home/vinhnt/cli/lib/hash.h"
    "/home/vinhnt/cli/lib/if.h"
    "/home/vinhnt/cli/lib/if_rmap.h"
    "/home/vinhnt/cli/lib/jhash.h"
    "/home/vinhnt/cli/lib/keychain.h"
    "/home/vinhnt/cli/lib/libospf.h"
    "/home/vinhnt/cli/lib/linklist.h"
    "/home/vinhnt/cli/lib/log.h"
    "/home/vinhnt/cli/lib/md5.h"
    "/home/vinhnt/cli/lib/memory.h"
    "/home/vinhnt/cli/lib/memtypes.h"
    "/home/vinhnt/cli/lib/network.h"
    "/home/vinhnt/cli/lib/plist.h"
    "/home/vinhnt/cli/lib/pqueue.h"
    "/home/vinhnt/cli/lib/prefix.h"
    "/home/vinhnt/cli/lib/privs.h"
    "/home/vinhnt/cli/lib/queue.h"
    "/home/vinhnt/cli/lib/routemap.h"
    "/home/vinhnt/cli/lib/regex-gnu.h"
    "/home/vinhnt/cli/lib/sigevent.h"
    "/home/vinhnt/cli/lib/smux.h"
    "/home/vinhnt/cli/lib/sockopt.h"
    "/home/vinhnt/cli/lib/sockunion.h"
    "/home/vinhnt/cli/lib/stream.h"
    "/home/vinhnt/cli/lib/str.h"
    "/home/vinhnt/cli/lib/table.h"
    "/home/vinhnt/cli/lib/thread.h"
    "/home/vinhnt/cli/lib/vector.h"
    "/home/vinhnt/cli/lib/vty.h"
    "/home/vinhnt/cli/lib/workqueue.h"
    "/home/vinhnt/cli/lib/zassert.h"
    "/home/vinhnt/cli/lib/zclient.h"
    "/home/vinhnt/cli/lib/zebra.h"
    "/home/vinhnt/cli/lib/rbac.h"
    "/home/vinhnt/cli/lib/authorization.h"
    "/home/vinhnt/cli/lib/conn.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/vtysh/lib/version.h;/usr/local/include/vtysh/lib/memtypes.h;/usr/local/include/vtysh/lib/route_types.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/vtysh/lib" TYPE FILE FILES
    "/home/vinhnt/cli/lib/version.h"
    "/home/vinhnt/cli/lib/memtypes.h"
    "/home/vinhnt/cli/lib/route_types.h"
    )
endif()

