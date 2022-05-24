# nvme-set-feature
# Autogenerated from man page /usr/share/man/man1/nvme-set-feature.1.gz
complete -c nvme-set-feature -s n -l namespace-id -d 'Sets the feature for the given nsid'
complete -c nvme-set-feature -s f -l feature-id -d 'The feature id to send with the command.  Value provided should be in hex'
complete -c nvme-set-feature -s l -l data-len -d 'The data length for the buffer submitted for this feature'
complete -c nvme-set-feature -s d -l data -d 'The data file for the buffer submitted for this feature'
complete -c nvme-set-feature -s v -l value -d 'The value for command dword 11, the value you want to set the feature to'
complete -c nvme-set-feature -s s -l save -d 'Save the attribute so that it persists through all power states and resets'
complete -c nvme-set-feature -s U -l uuid-index -d 'UUID Index of the feature'
