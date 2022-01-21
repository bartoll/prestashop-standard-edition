Prestashop Standard Edition
=====================================

Welcome to Bartoll's repository.

This repository is used to create a new Ecommerce project based on Prestashop framework.

If you want to contribute to the Prestashop (and we will be pleased if you do!), you can fork the repository https://github.com/PrestaShop/PrestaShop and submit a pull request.

Installation instructions
-------------------------

## Requirements
Read this page in documentation https://devdocs.prestashop.com/1.7/basics/installation/system-requirements/

## Creating a new project and getting Prestashop release package
```bash
$ composer create-project bartoll/prestashop-standard-edition {project_name} dev-main
$ cd {project_name}
$ composer get-presta {presta_version}
```

## Installing an application with command line
```bash
$ php install/index_cli.php \
	--step=database,fixtures,theme,modules,addons_modules \
	--language=pl \
	--timezone='Europe/Warsaw' \
	--domain='{domain}' \
	--db_server=127.0.0.1 \
	--db_user={db_user} \
	--db_password={db_pass} \
	--db_name={db_name} \
	--db_clear=1 \
	--name='Prestashop' \
	--activity=0 \
	--country=pl \
	--firstname='{firstname}' \
	--lastname='{lastname}' \
	--password='{password}' \
	--email='{email}' \
	--theme='classic' \
	--ssl=1 \
	--rewrite=1 \
	--fixtures=0
```
More details: https://doc.prestashop.com/display/PS17/Installing+PrestaShop+using+the+command-line+script


Development a new project
-------------------------

## How to work with GIT?
You will only track changes to those files that are not the core of Prestashop. This means custom or third-party themes and modules, and any files in the "overrides" folder.
You should modify the .gitignore file every time you want to add any module or theme to the tracked files.

If you need to modify core files, you can add these files to GIT with the special '--forced' argument.
First, add and commit the original files with no changes. Second, add and commit the changed files. 
```bash
git add --force my/ignore/file.foo
git commit -m "Add this file despite being ignored"
```

## How to configure PrestaShop to work with another domain?
You can transfer your database between different environments (e.g. localhost -> production).
First, install the application from scratch as described above.
During this process, Prestashop will download all 'module addons' (cannot be installed with the composer).
Then restore and replace the existing database with your "dump" file.
Third, make the necessary changes to:
```
- /app/config/parameters.php file
- ps_configuration table in database (PS_SHOP_DOMAIN, PS_SHOP_DOMAIN_SSL)
- shop_url table in database (domain, domain_ssl)
```

