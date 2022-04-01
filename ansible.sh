ansible slave1 -a "apt update -u root

while read line
do
	ansible slave 1 -a "apt install -y $line" -u root
done < config
