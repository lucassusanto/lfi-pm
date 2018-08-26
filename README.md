## LFI - Preventive Management

![Image of LFI-PM](https://github.com/lucassusanto/lfi-pm/blob/lucas/public/images/sample.png)

CalemEAM Asset Preventive Management


### REQUIREMENTS

- XAMPP
- PHP >= 7.1.3
- Composer
- postgresql


### INSTALLATION

1. Clone this repository or download as zip

```
git clone https://github.com/lucassusanto/lfi-pm.git
```

2. Import database in path below to postgresql using pgAdmin

```
database/postgresql_backup/pgadmin_lfi_tables_dataset.sql
```

3. Change directory to the repo

```
cd /to/the/repo (e.g. cd C:\\xampp\\htdocs\\pweb\\lfi-pm)
```

4. Create new .env file

```
cp .env.example .env
```

5. Open and change .env file to

```
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=<your_database_name>
DB_USERNAME=<username> (default: postgres)
DB_PASSWORD=<password>
```

6. Update the dependencies

```
composer update
```

7. Start Laravel web server

```
php artisan serve
```

then access http://127.0.0.1:8000

OR

Access 'public' folder in browser if you are using Apache XAMPP (e.g. http://localhost/pweb/lfi-pm/public)