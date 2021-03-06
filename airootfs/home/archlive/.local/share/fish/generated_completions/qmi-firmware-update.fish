# qmi-firmware-update
# Autogenerated from man page /usr/share/man/man1/qmi-firmware-update.1.gz
complete -c qmi-firmware-update -s s -l busnum-devnum -d 'Select device by bus and device number (in decimal)'
complete -c qmi-firmware-update -s d -l vid-pid -d 'Select device by device vendor and product id (in hexadecimal)'
complete -c qmi-firmware-update -s w -l cdc-wdm -d 'Select device by QMI/MBIM cdc-wdm device path (e. g.  \\,/dev/cdc-wdm0\\/)'
complete -c qmi-firmware-update -s t -l tty -d 'Select device by serial device path (e. g.  \\,/dev/ttyUSB2\\/)'
complete -c qmi-firmware-update -s u -l update -d 'Launch firmware update process'
complete -c qmi-firmware-update -s f -l firmware-version -d 'Firmware version (e. g.  \'05. 05. 58. 00\')'
complete -c qmi-firmware-update -s c -l config-version -d 'Config version (e. g.  \'005. 025_002\')'
complete -c qmi-firmware-update -s C -l carrier -d 'Carrier name (e. g.  \'Generic\')'
complete -c qmi-firmware-update -l ignore-version-errors -d 'Run update operation even with version string errors'
complete -c qmi-firmware-update -l override-download -d 'Download images even if module says it already has them'
complete -c qmi-firmware-update -l modem-storage-index -d 'Index storage for the modem image'
complete -c qmi-firmware-update -l skip-validation -d 'Don\'t wait to validate the running firmware after update'
complete -c qmi-firmware-update -s b -l reset -d 'Reset device into download mode. SS "Update options (download mode):"'
complete -c qmi-firmware-update -s U -l update-download -d 'Launch firmware update process while in download (boot & hold) mode'
complete -c qmi-firmware-update -s z -l verify -d 'Analyze and verify firmware images. SS "Application Options:"'
complete -c qmi-firmware-update -s p -l device-open-proxy -d 'Request to use the \'qmi-proxy\' proxy'
complete -c qmi-firmware-update -l device-open-qmi -d 'Open a cdc-wdm device explicitly in QMI mode'
complete -c qmi-firmware-update -l device-open-mbim -d 'Open a cdc-wdm device explicitly in MBIM mode'
complete -c qmi-firmware-update -l device-open-auto -d 'Open a cdc-wdm device in either QMI or MBIM mode (default)'
complete -c qmi-firmware-update -l ignore-mm-runtime-check -d 'Ignore ModemManager runtime check'
complete -c qmi-firmware-update -s v -l verbose -d 'Run action with verbose messages in standard output, including the debug ones'
complete -c qmi-firmware-update -s S -l silent -d 'Run action with no messages in standard output; not even the error ones'
complete -c qmi-firmware-update -s L -l verbose-log -d 'Write verbose messages to an output file'
complete -c qmi-firmware-update -s V -l version -d 'Print version'
complete -c qmi-firmware-update -s h -l help -d 'Show help'
complete -c qmi-firmware-update -s H -l help-examples -d 'Show help examples'

