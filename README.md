Run this First
```
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
```

Then this
```
curl -sL https://raw.githubusercontent.com/mendylivium/lamp-install/master/install-lamp.sh | sudo bash -s dbpassword
```
Replace "dbpassword" with your desired database password
