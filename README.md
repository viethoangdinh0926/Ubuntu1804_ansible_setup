SETUP
------------
Requirements
------------
1. BIOS is running in Legacy Boot mode
2. System is wiredly connected to the internet for downloading packages 
------------
Instruction
------------
1. Download an image of Ubuntu (18.04 preferably)
2. Create a bootable drive from the ISO file (Ubuntu only)
3. Replace txt.config in isolinux folder in the bootable drive with the one in /usb/full_auto
4. Copy ks.preseed from repo to root of the bootable drive
5. Copy the setup folder from repoto root of the bootable drive
6. Restart the machine and boot from the bootable drive
   Note: The harddrive will be wiped completely
7. The machine will automatically reboot and is available for use after approx 30 mins

