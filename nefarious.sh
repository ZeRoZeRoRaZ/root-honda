#nefarious things
echo "**********************"
echo "Starting nefariousness"

echo "Mounting system r/w"
mount -o remount,rw,sync /system

echo "Copying files"
cp /data/local/tmp/rootme/su /system/xbin/
chown 0:0 /system/xbin/su
chmod 6777 /system/xbin/su

echo "copy whitelist"
cp /data/local/tmp/rootme/whitelist-1.0-new.xml /data/data/whitelist-1.0.xml
echo "chown whitelist"
chown system:system /data/data/whitelist-1.0.xml

cp /data/local/tmp/rootme/SuperSU-v2.78.apk /system/app/
chmod 666 /system/app/SuperSU-v2.78.apk

echo "Mounting system r/o"
echo "Success"
mount -o remount,ro /system
