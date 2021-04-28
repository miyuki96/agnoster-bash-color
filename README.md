# agnoster-bash-color
A configuration file to have history line and time in different colors with agnoster theme.

Steps:

#################################################
1 # Firstly, you have to have Oh-My-Bash installed.
#################################################

#################################################
2 # Then, add this code (or replace for already existing functions) to your configuration file of agnoster theme (configuration file is located at ~.oh-my-bash/themes/agnoster/agnoster.theme.sh).
#################################################

# Display history line
prompt_historyline(){
	prompt_segment yellow white ' \! '
}

# Display time
prompt_time() {
  prompt_segment orange white ' [\A] '
}

# Context: user@hostname (who am I and where am I)
prompt_context() {
    local user=`whoami`
    
    # if you don't want to display username, delete $user == $DEFAULT_USER in if condition
    
    if [[ $user == $DEFAULT_USER || $user != $DEFAULT_USER || -n $SSH_CLIENT ]]; then
    		# green is the color of background
    		# white is the color of foreground  		
    		
        prompt_segment green white " $user@\h "        
    fi
}

## Main prompt

build_prompt() {
    [[ ! -z ${AG_EMACS_DIR+x} ]] && prompt_emacsdir
    prompt_status
    prompt_historyline
    prompt_time
    #[[ -z ${AG_NO_HIST+x} ]] && prompt_histdt
    [[ -z ${AG_NO_CONTEXT+x} ]] && prompt_context
    prompt_virtualenv
    prompt_dir
    prompt_git
    prompt_end

}


#################################################
3 # change colors as you wish, as following: prompt_segment colorBackground colorForeground
#################################################
