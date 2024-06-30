# Aviation
## Setup
> ⚠️ Change files with **ch**.\*.*\ to your configuration!

> configure aero.ini

### Init Submodule (Aviator)
    git submodule init
    git submodule update
### Build all depending images
    ./build-needed.sh
### Start everything
    docker compose up -d

## Fix for USBFS
In /etc/default/grub add `usbcore.usbfs_memory_mb=0` to GRUB_CMDLINE_LINUX_DEFAULT.
