#
# Copyright (C) 2012 The Android Open Source Project
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
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

echo "Creating x86_64 Build Target"

mkdir -pv build/core/combo/arch/x86_64
mkdir -pv build/core/combo/include/arch/target_linux-x86_64

cp -v device/generic/x86_64/TARGET_linux-x86_64.mk  build/core/combo/TARGET_linux-x86_64.mk 
cp -v device/generic/x86_64/x86_64.mk  build/core/combo/arch/x86_64/x86_64.mk 
cp -v device/generic/x86_64/AndroidConfig.h  build/core/combo/include/arch/target_linux-x86_64/AndroidConfig.h

add_lunch_combo mini_x86_64-userdebug
