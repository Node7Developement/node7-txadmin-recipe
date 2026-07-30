================================================================================
NODE7 REDM TXADMIN RECIPE
=========================

<img width="1672" height="941" alt="BrandBanner" src="https://github.com/user-attachments/assets/3c69f002-c729-4751-8baf-8d59fd05d234" />

NODE7 REDM FRAMEWORK — INSTALLATION

Official txAdmin Recipe:
https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

GitHub Repository:
https://github.com/Node7Developement/node7-txadmin-recipe

REQUIREMENTS

* txAdmin
* Valid Cfx.re license key
* MariaDB or MySQL database
* Internet access to GitHub
* Clean server deployment folder

INSTALLATION

1. Open txAdmin.

2. Select:

   Create New Server

3. Select:

   Remote URL Template

4. Paste this exact recipe URL:

   https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

5. Enter your server information:

   * Cfx.re license key
   * Maximum players
   * Database host
   * Database port
   * Database username
   * Database password
   * Database name

6. Start the deployment.

7. Allow every recipe task to complete.

   The recipe automatically installs:

   * NODE7 framework resources
   * Required dependencies
   * Server configuration
   * Permissions
   * Database tables

8. When txAdmin reports the deployment completed successfully, start the server.

9. Watch the server console during the first startup for resource or database errors.

IMPORTANT

* Do not close txAdmin during deployment.
* Do not rename the GitHub folder.
* Do not rename recipe.yaml.
* Do not use the normal GitHub webpage URL in txAdmin.
* Always use the raw recipe URL shown above.
* Fresh server deployments install every NODE7 resource currently listed inside recipe.yaml.
* New resources must be added to recipe.yaml before they install automatically on future fresh deployments.

404 RECIPE ERROR

If txAdmin displays:

Recipe error: Response code 404 (Not Found)

Open this URL in your browser:

https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

The browser must display the YAML recipe.

If it displays 404, confirm:

* The repository is public.
* The branch is main.
* The folder is named node7-txadmin-recipe.
* The file is named recipe.yaml.
* The GitHub changes were committed.

SUPPORT

GitHub:
https://github.com/Node7Developement

Discord:
https://discord.gg/j2H3kjEpgf
::: 

