# Django Dumpdata with Exclude Fields

## Usage

```shell
docker compose exec python python manage.py dumpdatax --format json --indent 2 --exclude-field content_type --exclude-field codename  auth.Permission > ./tmp/auth_permission.json
```
