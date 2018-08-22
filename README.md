LFI - Preventive Management

CalemEAM Asset Management

REQUIREMENTS

- Composer
- postgresql
- php 7.x.x
- Apache web server (optional)
- Git (optional)

INSTALLATION

git clone
or download as zip

import file database/postgresql/<nama_file>.sql to postgres (through pgAdmin)
File1: Create tables and foreign keys
File2: File1 + sample data

change directory to path and then execute 'composer update'

cp .env.example .env
Open and change .env file to
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=<your_database_name>
DB_USERNAME=<username (default: postgres)>
DB_PASSWORD=<password>

Access 'public' folder through Apache
OR
Execute 'php artisan serve' and then open 127.0.0.1:8080 (?)


lfi-template folder