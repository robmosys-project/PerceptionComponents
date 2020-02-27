# Install script for directory: /home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/workspace/ComponentFaceRecognition/smartsoft

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rosmosys/SOFTWARE/smartsoft")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/workspace/ComponentFaceRecognition/smartsoft/build/ComponentFaceRecognition")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition"
         OLD_RPATH "/home/rosmosys/tf/lib:/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/AceSmartSoftFramework/build/AceSmartSoftKernel:/opt/ros/kinetic/lib/x86_64-linux-gnu:/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/DomainModelsRepositories/CommPerception/smartsoft/build:/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/DomainModelsRepositories/DomainVision/smartsoft/build:/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/DomainModelsRepositories/CommObjectRecognitionObjects/smartsoft/build:/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/DomainModelsRepositories/CommBasicObjects/smartsoft/build:/opt/ACE_wrappers/lib:/home/rosmosys/SOFTWARE/smartsoft/repos/UtilityRepository/smartXml/build:/home/rosmosys/SOFTWARE/smartsoft/repos/UtilityRepository/smartProperty/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ComponentFaceRecognition")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/rosmosys/SOFTWARE/smartsoft-ace-mdsd-v3/repos/workspace/ComponentFaceRecognition/smartsoft/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
