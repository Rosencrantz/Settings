export JAVA_HOME=/Library/Java/Home
export NODE_PATH=/usr/local/lib/node
export JSLINT_PATH=/Users/shaffenden/vim_scripts/jslint.vim
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/Applications/Atlassian/atlassian-plugin-sdk-3.2.4:$PATH
export PATH=$JSLINT_PATH/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.gem/ruby/1.8/bin:$PATH
export FECRU_INST=/Applications/Atlassian/atlassian-fisheye-crucible/fisheye-crucible-home
export FISHEYE_INST=$FECRU_INST
export TRUNK=https://svn.atlassian.com/svn/private/atlassian/confluence/trunk
export STABLE=https://svn.atlassian.com/svn/private/atlassian/confluence/branches/confluence_3_4_stable
export MAVEN_OPTS='-Xmx512m'
export ATLASSIAN_SCRIPTS=$HOME/src/atlassian/atlassian-scripts/trunk
export MAVEN_COLOR=true
export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
source $ATLASSIAN_SCRIPTS/sourceme.sh

#reset java home
alias j4='JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.4/Home'
alias j5='JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home'
alias j6='JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home'
alias lic="cat $HOME/src/atlassian/confluence/trunk/confluence-not-shippable/src/main/resources/test-data.properties | ruby -e 'i = 0; print \$stdin.read.split(/\n\n/).grep(/CONF_COMM=/).first.gsub(/(CONF_COMM=|CONF_COMM\.SEN.*)/, \"\").gsub(/^#.*\n/,\"\").strip' | pbcopy"

# Set git autocompletion and PS1 integration
if [ -f  /usr/local/Cellar/git/1.7.3.5/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/Cellar/git/1.7.3.5/etc/bash_completion.d/git-completion.bash 
fi

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f /usr/local/Cellar/bash-completion/1.2/etc/bash-completion  ]; then
    . /usr/local/Cellar/bash-completion/1.2/etc/bash-completion
fi


PS1='\[\033[0;34m\]\u@\h [\A]\[\033[0;35m\]:\W\[\033[31m\]$(__git_ps1)\[\033[00m\]> '
