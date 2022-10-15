# Django Dumpdata with Exclude Fields

This is an extension of django's built-in batch file "dumpdata". Add "exclude-field" label to exclude certain columns from the fixture.

## Usage

```shell
docker compose exec python python manage.py dumpdatax --format json --indent 2 --exclude-field content_type --exclude-field codename  auth.Permission > ./tmp/auth_permission.json
```
