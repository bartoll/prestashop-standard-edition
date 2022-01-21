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
$ git clone https://github.com/bartoll/prestashop_standard {project_name}
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

