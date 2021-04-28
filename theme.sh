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
