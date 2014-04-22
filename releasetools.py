# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Brief: for htc to add flash tools to the zip
# Date: 20131126
import common
import inspect
import os

'''
Created on 2013-11-26

@author: tangliuxiang01@baidu.com
'''

COMMON_INFO = None
OPTIONS = common.OPTIONS

'''
    usage:
            get the device directory where the flashtools and releasetools.py been 
'''
def getDeviceDir():
    this_file = inspect.getfile(inspect.currentframe())
    return os.path.abspath(os.path.dirname(this_file))

''''
    usage:
        read data of files
'''
def readData(file_path):
    file_obj = open(file_path, 'r')
    try:
        all_data = file_obj.read()
    finally:
        file_obj.close()
    return all_data

'''
    usage:
        add files to output_zip
'''
def addFiles(rootPath, filePath):
    global COMMON_INFO, FLASH_TOOLS_DIR

    fileAbsPath = r'%s/%s' % (rootPath, filePath)
    if os.path.exists(fileAbsPath):
        if os.path.isdir(fileAbsPath):
            for f in os.listdir(fileAbsPath):
                if filePath is "" or filePath is None:
                    childFilePath = f
                else:
                    childFilePath = r'%s/%s' % (filePath, f)
                addFiles(rootPath, childFilePath)
        else:
            fileData = readData(fileAbsPath)
            if fileData:
                print "add file: %s" % filePath
                common.ZipWriteStr(COMMON_INFO.output_zip, filePath, fileData)

'''
    usage:
            add flash tools to output_zip
'''
def addFlashTools(info):
    print "in htc_AddFlashTools"

    device_dir = getDeviceDir()
    flash_tool_dir = "%s/flashtools" % device_dir

    print "deviceDir: %s" % device_dir
    print "flash_tools_path: %s" % flash_tool_dir
    if device_dir is not None:
        if os.path.isdir(flash_tool_dir):
            addFiles(flash_tool_dir, "")
    print "out htc_AddFlashTools"

'''
    usage:
        Add recovery.img to output_zip 
'''
def addRecoveryImg():
    recovery_img = common.GetBootableImage("recovery.img", "recovery.img",
                                           OPTIONS.input_tmp, "RECOVERY")
    print recovery_img
    if recovery_img:
        common.ZipWriteStr(COMMON_INFO.output_zip, "recovery.img", recovery_img.data)

'''
    usage:
        Add boot.img to output_zip 
'''
def addBootImg():
    boot_img = common.GetBootableImage("boot.img", "boot.img",
                                           OPTIONS.input_tmp, "BOOT")
    print boot_img
    if boot_img:
        common.ZipWriteStr(COMMON_INFO.output_zip, "boot.img", boot_img.data)

'''
    in the end of generating the incremental ota package, this method will be called
    usage:
        add flash tools to flash boot.img and recovery.img for users
'''
def IncrementalOTA_InstallEnd(info):
    global COMMON_INFO
    COMMON_INFO = info
    addFlashTools(info)
    addRecoveryImg()
    addBootImg()

'''
    in the end of generating the full ota package, this method will be called
    usage:
        add flash tools to flash boot.img and recovery.img for users
'''
def FullOTA_InstallEnd(info):
    global COMMON_INFO
    COMMON_INFO = info
    addFlashTools(info)
    addRecoveryImg()
