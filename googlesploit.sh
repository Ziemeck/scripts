#!/bin/bash

PADDING="------------"
DIR_MSF="/usr/share/metasploit-framework/modules/"
DIR_NMAP="/usr/share/nmap/scripts/"
DIR_EXDB="/usr/share/exploitdb/"

# ------------------------------------------------------------------------------
# Usage info
function usage()
{
  echo "Usage: googlesploit term1 "
  echo ""
  echo "=========="
  echo " Examples "
  echo "=========="
  echo "googlesploit apache"
  echo ""
  echo "========="
  echo " Options "
  echo "========="
  echo "to do"
  echo ""
  exit 2
}

## Check for empty arguments
if [[ $# -eq 0 ]]; then
      usage >&2
  fi
  # ------------------------------------------------------------------------------

  if [ ! $1 ]
          then
                    usage
                        else
                                  echo ${PADDING}
                                        echo -e "MSF MODULES\nPATH: ${DIR_MSF}"
                                              echo ${PADDING}
                                                    # Find msf modules
                                                          find /usr/share/metasploit-framework/modules/ -name "*$1*" | cut -d "/" -f 6- | sed s/.rb//g | sed s/.rb//g | sed s/exploits/exploit/g
                                                                echo ${PADDING}
                                                                      echo -e "EXPLOIT-DB FILES\nPATH: ${DIR_EXDB}"
                                                                            echo ${PADDING}
                                                                                  # Find exploitdb
                                                                                        cat ${DIR_EXDB}/files_exploits.csv | grep "$1" | cut -d "," -f 3,2 | sed s/,/\ /g
                                                                                              echo ${PADDING}
                                                                                                    echo -e "NMAP SCRIPTS\nPATH: ${DIR_NMAP}"
                                                                                                          echo ${PADDING}
                                                                                                                # Find nmap scripts
                                                                                                                      find /usr/share/nmap/scripts/ -name "*$1*"
                                                                                                                          fi

