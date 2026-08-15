sudo make test

sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
    /var/lib/shim-signed/mok/MOK.priv /var/lib/shim-signed/mok/MOK.der \
    hid_universal_pidff.ko

sudo rmmod hid_universal_pidff
sudo insmod hid_universal_pidff.ko