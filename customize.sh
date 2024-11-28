for i in /system/product/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/product\/etc\/sysconfig\//}
    if [ ! -z "$(grep "LG_V50_" $i)" ]; then
        [ ! -f $MODPATH/system/product/etc/sysconfig/$file ] && cat /system/product/etc/sysconfig/$file | grep -v "PIXEL" >$MODPATH/system/product/etc/sysconfig/$file
    fi
done

for i in /system/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/etc\/sysconfig\//}
    if [ ! -z "$(grep "LG_V50_" $i)" ]; then
        [ ! -f $MODPATH/system/etc/sysconfig/$file ] && cat /system/etc/sysconfig/$file | grep -v "PIXEL" >$MODPATH/system/etc/sysconfig/$file
    fi
done

if [ -d /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/product\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/product/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/$file $MODPATH/system/product/etc/sysconfig/$file
        fi
    done
fi

if [ -d /data/adb/modules/PixelifyPhotos/system/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/$file $MODPATH/system/etc/sysconfig/$file
        fi
    done
fi

ui_print "LG V50 Spoofer installation done!"
sleep 1.0
ui_print "
█▀▀ █▄░█ ░█ █▀█ █▄█
██▄ █░▀█ ▄█ █▄█ ░█░"
ui_print "~By @pipecitooficial"
