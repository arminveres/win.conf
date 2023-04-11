#!/bin/bash

# Start SSH Agent
#----------------------------

SSH_ENV="$HOME/.ssh/environment"

function run_ssh_env {
	. "${SSH_ENV}" >/dev/null
}

function start_ssh_agent {
	echo "Initializing new SSH agent..."
	ssh-agent | sed 's/^echo/#echo/' >"${SSH_ENV}"
	echo "succeeded"
	chmod 600 "${SSH_ENV}"

	run_ssh_env
	echo "Loading keys into ssh-agent..."
	ssh-add ~/.ssh/id_ed25519

}

if [ -f "${SSH_ENV}" ]; then
	run_ssh_env
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ >/dev/null || {
		start_ssh_agent
	}
else
	start_ssh_agent
fi

eval "$(zoxide init bash)"
export PATH=$PATH:~/.bin/btop4win/
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# example configuraiton for stm32-cmake
export STM32_TOOLCHAIN_PATH="C:\ST\STM32CubeIDE_1.10.1\STM32CubeIDE\plugins\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.100.202210260954\tools\bin"
export TARGET_TRIPLET=arm-none-eabi
export STM32_CUBE_G0_PATH="$HOME/STM32CubeG0"

[ -f ~/.alias ] && source ~/.alias
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
