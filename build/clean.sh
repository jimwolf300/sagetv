#!/bin/sh
#
# Copyright 2015 The SageTV Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
rm -rf so
rm -rf release
rm -rf minirelease
rm -rf elf
rm -rf serverrelease
rm -rf ubuntuserver
rm -rf ubuntuclient
rm -rf clientrelease
rm sagetv*.deb
rm sagetv*.gz

make -C ../native/so/SageLinux clean
make -C ../native/so/IVTVCapture clean
make -C ../third_party/jtux/native/so clean
make -C ../native/so/PVR150Input clean
make -C ../native/so/DVBCapture2.0 clean
make -C ../native/so/FirewireCapture clean
make -C ../native/so/MPEGParser2.0 clean
make -C ../native/so/HDHomeRun2.0 clean

make -C ../native/so/PVR150Tuning clean
make -C ../native/so/DirecTVSerialControl clean
make -C ../native/so/FirewireTuning clean

make -C ../third_party/swscale clean

make -C ../third_party/codecs/giflib clean
make -C ../third_party/codecs/jpeg-6b clean
make -C ../third_party/codecs/libpng clean
make -C ../third_party/codecs/tiff clean

make -C ../third_party/SageTV-LGPL/imageload clean
make -C ../native/crosslibs/Freetype clean

make -C ../third_party/codecs/faac clean
make -C ../third_party/codecs/ffad2 clean
make -C ../third_party/codecs/xvidcore/build/general clean
make -C ../third_party/codecs/x264 clean

make -C ../third_party/ffmpeg clean
make -C ../third_party/mplayer clean

make -C ../native/so/Mpeg2Transcoder clean