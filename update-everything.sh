DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
wget -r --no-parent -nH --directory-prefix=debian -A 'any*amd64.deb' "http://deb.anydesk.com/pool/main/a/anydesk/" -nd
wget -r --no-parent -nH --directory-prefix=debian  "https://release.axocdn.com/linux/gitkraken-amd64.deb" -nd
#wget -r --no-parent -nH --directory-prefix=debian -A 'microsoft-edge-stable_117*amd64.deb' "https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/" -nd
./update-repo.sh
