# docker-gitolite
gitolite service based on arch linux

### Usage
```bash
docker run -p 22:2222 \
-v gitolite:/var/lib/gitolite \
-v $HOME/.ssh/id_rsa.pub:/admin.pub \
-e PK_PATH=/admin.pub \
desiato/gitolite
```
