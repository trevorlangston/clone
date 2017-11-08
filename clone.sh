domain=$(echo "$1" | grep -oe '@.*:' | tr -d @:)
user=$(echo "$1" | grep -oe ':.*/' | tr -d /:)
mkdir -p  ~/src/"$domain"/"$user"
cd ~/src/"$domain"/"$user"
git clone $1
