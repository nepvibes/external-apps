A  repository for debian based  linux packages:

- [repository](https://github.com/nepvibes/external-apps)
- [my github home](https://nepvibes.github.io)


# Usage

```bash
sudo curl -SsL -o /etc/apt/trusted.gpg.d/nepvibes..gpg https://nepvibes.github.io/external-apps/debian/KEY.gpg
sudo curl -SsL -o /etc/apt/sources.list.d/nepvibe.list https://nepvibes.github.io/external-apps/debian/various.list
sudo apt update
sudo apt install  <app-name>
```
