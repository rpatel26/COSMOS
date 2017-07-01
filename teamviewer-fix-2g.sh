#!/bin/bash

GUEST_PATH_TO_TEAMVIEWER_WINE="/opt/teamviewer/tv_bin/wine/"

function file_exists {
    stat $1 &> /dev/null
}

if [ $((`cat /proc/self/maps | grep stack | awk -F'-' '{print "0x"$1}'`)) -gt $((0x80000000)) ] ; then
   echo "Your system is 3g/1g and patching is not needed."
   exit 0
fi

if ! file_exists "./files2change/" ; then
   echo "Cannot find files2change directory!"
   exit 1
fi

arch_run=$(arch)

if [ "$arch_run" != "i686" ]; then
   echo "Please, run this script inside the guest x86 system."
   echo "To enter the guest x86 system type 'exagear'."
   exit 1
fi
 

if ! file_exists "$GUEST_PATH_TO_TEAMVIEWER_WINE" ; then
   echo "Cannot find TeamViewer wine folder!"
   echo "Please, make sure that your installed TeamViewer."
   exit 1
fi

install ./files2change/wine* $GUEST_PATH_TO_TEAMVIEWER_WINE"/bin/"
install ./files2change/*.so  $GUEST_PATH_TO_TEAMVIEWER_WINE"/lib/wine/"

