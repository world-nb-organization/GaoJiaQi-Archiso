# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/oh-my-fish"
  or set -gx OMF_PATH "$HOME/oh-my-fish"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "{{OMF_CONFIG}}"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
