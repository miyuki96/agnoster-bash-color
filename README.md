# agnoster-bash-color
A configuration file to have history line and time in different colors with agnoster theme.

Steps:


1 # Firstly, install and use Oh-My-Bash and agnoster theme.

2 # Then, open configuration file of agnoster theme with editor (configuration file is located at ~.oh-my-bash/themes/agnoster/agnoster.theme.sh).

Add the two news functions prompt_historyline() and prompt_time().

Use the two others functions prompt_context() and build_prompt() to replace already existing functions in your configuration file.

Save the changes and enter following command to update configuration file:
source .bashrc

3 # change colors in configuration file as you wish, as following: prompt_segment colorBackground colorForeground
