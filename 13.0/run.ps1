param(        
    [Parameter(Mandatory=$true)]
    [String]$BlackAddonsSource
)
# docker run -u 0  -p 8888:3001 -p 8879:8069 --name odoo-dev  -v C:/SourceCode/git/black-addons:/mnt/black-addons --link db:db -t odoo-dev /usr/bin/python3 -m debugpy --listen 0.0.0.0:3001 /usr/bin/odoo --db_user=odoo --db_host=db --db_password=odoo
echo "-v ${BlackAddonsSource}:/mnt/black-addons"
docker run -u 0  -p 8888:3001 -p 8879:8069 --name odoo-dev  -v ${BlackAddonsSource}:/mnt/black-addons --link db:db -t odoo-dev /usr/bin/python3 -m debugpy --listen 0.0.0.0:3001 /usr/bin/odoo --db_user=odoo --db_host=db --db_password=odoo