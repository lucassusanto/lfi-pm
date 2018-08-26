## LFI - Preventive Management

![Image of LFI-PM](https://github.com/lucassusanto/lfi-pm/blob/master/public/images/sample.png)

Based on CalemEAM Asset Preventive Management. This project uses Laravel framework


### REQUIREMENTS

- XAMPP (https://www.apachefriends.org/index.html)
- PHP >= 7.1.3
- Composer (https://getcomposer.org)
- postgresql (https://www.postgresql.org)
- git (https://git-scm.com)
- Assume using Windows OS


### INSTALLATION

1. Clone this repository or download as zip

```
git clone https://github.com/lucassusanto/lfi-pm.git
```

2. Import database in path below to postgresql using pgAdmin

```
lfi-pm/database/postgresql_backup/pgadmin_lfi_tables_dataset.sql
```

3. Change directory to the repo

```
cd lfi-pm
```

4. Create new .env file

```
copy .env.example .env
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

7. Generate application key

```
php artisan key:generate
```

8. Start Laravel web server (command below) and then access http://127.0.0.1:8000 OR access 'public' folder if you are using Apache XAMPP (e.g. http://localhost/pweb/lfi-pm/public)

```
php artisan serve
```

### Non-Default Folders

- **database/postgresql_backup** contains backed up postgres DDL and DML. They can be imported through pgAdmin or psql

- **lfi-template** contains front end template to develop this project
