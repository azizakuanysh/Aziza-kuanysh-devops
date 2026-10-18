
#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Aziza"
echo "Surname: Kuanysh"
echo "Group: IT2-2310"
echo "Student ID: 38287"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -sr)"
echo "Disk Usage: $(df -h $HOME | tail -n 1)"
echo "Memory Usage: $(top -l 1 | grep PhysMem)"
echo

if [ -f "$(dirname "$0")/../Aziza_Kuanysh.info.txt" ]; then
  echo "Student information file exists."
else
  echo "Student information file does not exist."
fi
