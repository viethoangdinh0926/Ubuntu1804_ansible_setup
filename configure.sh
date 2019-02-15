#!/bin/bash

set -ex

export USB_PATH=$(pwd)
cp $USB_PATH/Ubuntu1804_ansible_setup-1.0/ks.preseed $USB_PATH
cp $USB_PATH/Ubuntu1804_ansible_setup-1.0/txt.config $USB_PATH/isolinux