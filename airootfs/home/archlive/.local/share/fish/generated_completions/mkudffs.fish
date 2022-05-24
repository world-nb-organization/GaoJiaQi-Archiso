# mkudffs
# Autogenerated from man page /usr/share/man/man8/mkudffs.8.gz
complete -c mkudffs -s h -l help -d 'Display the usage and list of options'
complete -c mkudffs -s l -l label -d 'Specify the UDF label'
complete -c mkudffs -s u -l uuid -d 'Specify the UDF uuid'
complete -c mkudffs -s b -l blocksize -d 'Specify the size of blocks in bytes'
complete -c mkudffs -s m -l media-type -d 'Specify the media type.  Must be specified before --udfrev'
complete -c mkudffs -s r -l udfrev -d 'Specify the UDF revision to use, either in hexadecimal BCD (e. g'
complete -c mkudffs -s n -l no-write -d 'Not really, do not write to device'
complete -c mkudffs -l new-file -d 'Create a new image file specified by device with blocks-count and fail if fil…'
complete -c mkudffs -l lvid -d 'Specify the Logical Volume Identifier'
complete -c mkudffs -l vid -d 'Specify the Volume Identifier'
complete -c mkudffs -l vsid -d 'Specify the 17. \\(en127.  character of Volume Set Identifier'
complete -c mkudffs -l fsid -d 'Specify the File Set Identifier'
complete -c mkudffs -l fullvsid -d 'Specify the full Volume Set Identifier'
complete -c mkudffs -l owner -d 'Specify the Owner name, person creating the medium or filesystem'
complete -c mkudffs -l organization -d 'Specify the Organization name responsible for creating the medium or filesyst…'
complete -c mkudffs -l contact -d 'Specify the Contact information for the medium or filesystem'
complete -c mkudffs -l uid -d 'Specify the uid of the root (/) directory.  If omitted, mkudffs uid is 0'
complete -c mkudffs -l gid -d 'Specify the gid of the root (/) directory.  If omitted, mkudffs gid is 0'
complete -c mkudffs -l mode -d 'Specify permissions in octal mode bits of the root (/) directory'
complete -c mkudffs -l read-only -d 'This option specify that the whole UDF disk should be treated as read-only'
complete -c mkudffs -l bootarea -d 'Specify how to fill UDF boot area which is the first 32kB of the disk and is …'
complete -c mkudffs -l strategy -d 'Specify the allocation strategy to use.  Valid strategies are 4 and 4096'
complete -c mkudffs -l spartable -l spartable -d 'Enable usage Sparing Table'
complete -c mkudffs -l sparspace -d 'Specify the number of entries in Sparing Table'
complete -c mkudffs -l packetlen -d 'Packet length in a number of blocks used for alignment'
complete -c mkudffs -l vat -d 'Enable usage of Virtual Allocation Table (VAT)'
complete -c mkudffs -l startblock -d 'Specify the block location where the UDF filesystem starts'
complete -c mkudffs -l minblocks -d 'Specify minimal number of blocks to write on disc with Virtual Allocation Tab…'
complete -c mkudffs -l closed -d 'Close disc with Virtual Allocation Table'
complete -c mkudffs -l space -d 'Specify the Space Set'
complete -c mkudffs -l ad -d 'Specify the Allocation Descriptors of the root (/) directory. RS 1. 2i'
complete -c mkudffs -l noefe -d 'Don\'t Use Extended File Entries for the root (/) directory'
complete -c mkudffs -l locale -d 'Treat identifier string options as strings encoded according to the current l…'
complete -c mkudffs -l u8 -d 'Treat identifier string options as strings encoded in 8-bit OSTA Compressed U…'
complete -c mkudffs -l u16 -d 'Treat identifier string options as strings encoded in 16-bit OSTA Compressed …'
complete -c mkudffs -l utf8 -d 'Treat identifier string options as strings encoded in UTF-8'

