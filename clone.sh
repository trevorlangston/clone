if [ -z "$1" ]
  then
    echo "No git url supplied"
    exit 1
fi

domain=$(echo "$1" | grep -oE '@git(hub|lab).com' | tr -d @)
user=$(echo "$1" | grep -oe ':.*/' | tr -d /:)
if [ -z "$domain" ] || [ -z "$user" ]
  then
    echo "The url must use the git protocol"
    exit 1
fi

mkdir -p  ~/src/"$domain"/"$user"
cd ~/src/"$domain"/"$user"
git clone $1
