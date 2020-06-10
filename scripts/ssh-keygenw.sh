#!/bin/bash
#******************************************************************************
# Copyright 2020 the original author or authors.                              *
#                                                                             *
# Licensed under the Apache License, Version 2.0 (the "License");             *
# you may not use this file except in compliance with the License.            *
# You may obtain a copy of the License at                                     *
#                                                                             *
# http://www.apache.org/licenses/LICENSE-2.0                                  *
#                                                                             *
# Unless required by applicable law or agreed to in writing, software         *
# distributed under the License is distributed on an "AS IS" BASIS,           *
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    *
# See the License for the specific language governing permissions and         *
# limitations under the License.                                              *
#******************************************************************************/


#==============================================================================
# SCRIPT:       ssh-keygenw.sh
# AUTOHR:       Markus Schneider
# CONTRIBUTERS: Markus Schneider,<YOU>
# DATE:         2020-06-10
# REV:          0.1.0
# PLATFORM:     Noarch
# PURPOSE:      Shell wrapper for ssh-keygen
#==============================================================================

SSH_DIR=$PROJECT_HOME/ssh-keys

if [ ! -e $CWD/ssh-keys ]
then
   mkdir -p $CWD/ssh-keys
fi
  
ssh-keygen -t rsa -b 4096 -C "${USER}@${HOST}" -f $SSH_DIR/id_rsa
