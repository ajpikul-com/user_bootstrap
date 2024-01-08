
date +"Prologue: %A, %B %d"
if which apt &> /dev/null; then
	echo -n "Last update: "
	ls -l /var/lib/apt/periodic/update-success-stamp | awk '{print $6" "$7" "$8}'

	if [ "$(apt list --upgradeable 2> /dev/null | grep upgradable | wc -l)" != "0" ]; then
		echo "$(apt list --upgradeable 2> /dev/null | grep upgradable | wc -l)" packages to upgrade
	fi
elif which pacman &> /dev/null; then
	echo -n "Last update: "
  date=$(cat /var/log/pacman.log | grep 'full system' | tail -n 1 | sed -r 's/^(\[.*T).*/\1/')
  date=${date:1:-1}
  date -d $date +"%B %d"
  echo 'Try `pacman -Syu`'
fi
