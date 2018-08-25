
git pull
git add .
git commit -m  $1 
#'update'

# login password, to unlock login keychain
LOGIN_PASSWORD="aaa"
LOGIN_KEYCHAIN=~/Library/Keychains/login.keychain
# unlock login keygen
security unlock-keychain -p ${LOGIN_PASSWORD} ${LOGIN_KEYCHAIN} || failed "unlock-keygen"
git config --global credential.helper store
git push -u origin master
