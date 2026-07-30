================================================================================
NODE7 REDM TXADMIN RECIPE
=========================






<img width="1672" height="941" alt="BrandBanner" src="https://github.com/user-attachments/assets/3c69f002-c729-4751-8baf-8d59fd05d234" />

Official txAdmin deployment recipe for the NODE7 RedM Framework.

Developed by NODE7 Development Studios.

================================================================================
PROJECT LINKS
=============

GitHub Repository:
https://github.com/Node7Developement/node7-txadmin-recipe

NODE7 GitHub Organization:
https://github.com/Node7Developement

Direct txAdmin Recipe URL:
https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

Community Discord:
https://discord.gg/j2H3kjEpgf

================================================================================
IMPORTANT
=========

The folder name must remain exactly:

node7-txadmin-recipe

Do not rename the folder.
Do not place another node7-txadmin-recipe folder inside it.
Do not rename recipe.yaml.
Do not use the GitHub webpage URL as the txAdmin recipe URL.
Do not upload the ZIP file directly to GitHub without extracting it.

The direct txAdmin URL depends on the exact repository path shown above.
Changing the folder name or file location will cause a 404 Not Found error.

================================================================================
REPOSITORY STRUCTURE
====================

The GitHub repository must contain this exact structure:

node7-txadmin-recipe/
|-- recipe.yaml
|-- server.cfg
|-- permissions.cfg
|-- README.txt
|-- LICENSE
|-- .editorconfig
|-- .gitattributes
|-- .gitignore
`-- database/
    `-- node7_core.sql

The recipe file must be located at:

node7-txadmin-recipe/recipe.yaml

The server configuration must be located at:

node7-txadmin-recipe/server.cfg

The permissions configuration must be located at:

node7-txadmin-recipe/permissions.cfg

The database file must be located at:

node7-txadmin-recipe/database/node7_core.sql

================================================================================
TXADMIN INSTALLATION
====================

1. Extract the NODE7 recipe ZIP.

2. Open the following GitHub repository:

   https://github.com/Node7Developement/node7-txadmin-recipe

3. Open the existing node7-txadmin-recipe folder.

4. Replace the old files inside that folder with the extracted files.

5. Commit all changes directly to the main branch.

6. Open the direct recipe URL in a browser:

   https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

7. Confirm the browser displays the YAML recipe instead of a 404 page.

8. Open txAdmin.

9. Select Create New Server.

10. Select Remote URL Template.

11. Paste the direct recipe URL:

    https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

12. Enter the requested server information:

    * Cfx.re server license key
    * Maximum player count
    * Database host
    * Database port
    * Database username
    * Database password
    * Database name

13. Start the deployment.

14. Allow the recipe to complete every task. The complete framework downloads
    many separate repositories and may take several minutes depending on GitHub,
    database, disk, and network performance.

15. Do not close txAdmin while the deployment is running.

================================================================================
REQUIREMENTS
============

* A supported Windows or Linux RedM server host
* txAdmin with recipe engine 3 support
* A valid Cfx.re server license key
* MariaDB or MySQL database access
* Internet access to GitHub and raw.githubusercontent.com
* Enough disk space for the RedM server artifacts and NODE7 resources
* Permission for txAdmin to create files and folders inside txData

Recommended database:

* MariaDB 10.6 or newer
* UTF8MB4 character support

================================================================================
WHAT THE RECIPE INSTALLS
========================

The recipe installs and configures:

* Official CFX server data resources
* oxmysql built release
* ox_lib
* ox_target
* progressbar
* NODE7 server configuration
* NODE7 ACE permissions
* NODE7 database structure
* NODE7 framework resources

The recipe creates the following main resource groups:

resources/[cfx-default]
resources/[standalone]
resources/[node7]

================================================================================
NODE7 RESOURCES
===============

Core and Dependencies:

* node7-console-brand
* ox_lib
* progressbar
* ox_target
* oxmysql
* node7-core
* node7-connect
* node7-input
* node7-menu-base
* node7-interaction

Inventory, Economy, Weapons and Assets:

* node7-inventory
* node7-cashitem
* node7-banking
* node7-bankdoors
* node7-weapons
* node7-ammo
* node7-horses

Character, Appearance and Clothing:

* node7-skins
* node7-appearance
* node7-wardrobe
* node7-clothing
* node7-barbershop
* node7-charselect

Player Interface and Navigation:

* node7-drawtext
* node7-timehud
* node7-hud
* node7-playerlist
* node7-mail
* node7-directory
* node7-jobcenter
* node7-pausemenu
* node7-radialmenu

Shops, Consumables and Ambient Systems:

* node7-consumeables
* node7-shop-catalogue
* node7-gun-catalogue
* node7-admincoords
* node7-density
* node7-npc-nospeak

Minigames, Doors, Law and Dispatch:

* node7-lockpick-minigame
* node7-handcuff-minigame
* ox_doorlock
* node7-handcuffs
* node7-skills
* node7-dispatch
* node7-lawmen

Activities and Trains:

* node7-robbing
* node7-ambienttrains
* node7-trains

================================================================================
SERVER CONFIGURATION
====================

The recipe installs server.cfg directly into the deployed server data folder.

The configuration includes:

* RedM game selection
* Server build enforcement
* txAdmin endpoint placeholders
* Cfx.re license placeholder
* Database connection placeholder
* NODE7 resource startup order
* NODE7 permission hierarchy
* NODE7 owner identifiers
* Default RedM resources
* NODE7 server information

The following values are supplied by txAdmin during deployment:

{{svLicense}}
{{maxClients}}
{{serverEndpoints}}
{{addPrincipalsMaster}}
{{dbConnectionString}}

Do not replace these placeholders before txAdmin deployment unless you are
manually configuring the server outside the recipe system.

================================================================================
DATABASE INSTALLATION
=====================

The recipe connects to the database selected in txAdmin and imports:

database/node7_core.sql

The SQL file creates the database structure required by the NODE7 framework.

Before installing:

* Create an empty database for the NODE7 server.
* Confirm the database user can create and modify tables.
* Confirm the database server is reachable from the RedM server machine.
* Do not use a production database containing unrelated data.

The recipe automatically sets the server connection string with:

set mysql_connection_string "{{dbConnectionString}}"

================================================================================
RESOURCE STARTUP ORDER
======================

The included server.cfg starts resources in dependency order.

1. Default RedM resources
2. ACE permissions
3. oxmysql
4. NODE7 console branding
5. Shared libraries
6. NODE7 core
7. Interaction systems
8. Inventory and economy
9. Character and appearance
10. Player interface resources
11. Shops and ambient systems
12. Minigames, law and dispatch
13. Activities and train systems

Do not replace the startup list with a broad folder ensure unless every resource
has been verified to start safely in alphabetical order.

================================================================================
POST-INSTALL CHECKLIST
======================

After the recipe reports a successful deployment:

1. Open the generated server.cfg.

2. Confirm the Cfx.re license key was inserted.

3. Confirm the database connection string was inserted.

4. Confirm permissions.cfg exists beside server.cfg.

5. Confirm the following folders exist:

   resources/[cfx-default]
   resources/[standalone]
   resources/[node7]

6. Confirm oxmysql exists inside resources/[standalone].

7. Confirm node7-core exists inside resources/[node7].

8. Open the database and confirm the NODE7 tables were created.

9. Start the server and watch the console for missing dependency errors.

10. Resolve the first resource error before troubleshooting later errors, since
    one failed dependency can prevent several resources from starting.

================================================================================
GITHUB UPDATE PROCEDURE
=======================

When updating the recipe:

1. Extract the updated ZIP.

2. Open the repository's existing node7-txadmin-recipe folder.

3. Replace only the files inside that folder.

4. Keep the folder name exactly node7-txadmin-recipe.

5. Keep the recipe filename exactly recipe.yaml.

6. Commit the changes to the main branch.

7. Open the direct raw URL and verify the latest recipe content appears:

   https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

8. Start a fresh txAdmin deployment.

A local ZIP does not update GitHub automatically. The extracted files must be
uploaded and committed before txAdmin can use the updated recipe.

================================================================================
TROUBLESHOOTING
===============

## 404 NOT FOUND

Error:

Recipe error: Response code 404 (Not Found)
Make sure this is a valid Recipe URL.

Cause:

* recipe.yaml does not exist at the URL.
* The GitHub change was not committed.
* The wrong branch was used.
* The folder was renamed.
* The root URL was used instead of the nested recipe URL.

Correct URL:

https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/node7-txadmin-recipe/recipe.yaml

Test the URL in a normal browser. It must display YAML text.

Do not use:

https://github.com/Node7Developement/node7-txadmin-recipe

The GitHub repository page is not a raw recipe file.

Do not use:

https://raw.githubusercontent.com/Node7Developement/node7-txadmin-recipe/main/recipe.yaml

That URL only works if recipe.yaml exists at the repository root.

---

## MOVE_PATH OR ENOENT FAILURE

Error example:

ENOENT: no such file or directory, stat './tmp/NODE7/server.cfg'

The current recipe avoids this problem by downloading server.cfg,
permissions.cfg, and node7_core.sql directly to their required locations.

If a move_path error appears after uploading the current package, txAdmin is
still loading an older recipe from GitHub. Open the direct raw URL and verify
that the displayed recipe matches the uploaded version.

---

## RESOURCES DID NOT INSTALL

Confirm the deployment log includes download tasks for NODE7 repositories such
as:

* node7-core
* node7-inventory
* node7-appearance
* node7-horses
* node7-lawmen
* node7-trains

If the log only installs server.cfg, SQL, or CFX resources, GitHub is still
serving an older recipe.

Open the direct raw URL and confirm it contains the NODE7 download_github tasks.

---

## GITHUB DOWNLOAD FAILURE

Possible causes:

* GitHub temporary rate limiting
* Repository unavailable
* Incorrect repository branch
* Incorrect subpath
* Network interruption
* Private repository without authentication

Retry the deployment after confirming the repository is public and accessible.
The recipe contains short delays to reduce GitHub request throttling.

---

## DATABASE CONNECTION FAILURE

Confirm:

* The database service is running.
* The database host and port are correct.
* The database exists.
* The database username and password are correct.
* The database user has table creation permissions.
* Firewall rules allow the RedM server to connect.

---

## MISSING RESOURCE OR DEPENDENCY

Confirm the missing resource exists in its expected directory and contains a
valid fxmanifest.lua file.

Check the first error in the server console. Later errors may only be side
effects of the first failed dependency.

================================================================================
PERMISSIONS
===========

The included configuration defines the following NODE7 hierarchy:

Owner
`-- Admin
    `-- Moderator
`-- Staff

The included server.cfg also grants NODE7 permissions to txAdmin administrators
through group.admin.

Review the owner identifiers before publishing or redistributing the server
configuration. Replace identifiers only when assigning ownership to a different
server operator.

================================================================================
SECURITY
========

Never commit the following private information to GitHub:

* Cfx.re license keys
* Database passwords
* Database connection strings
* Steam Web API keys
* Discord bot tokens
* Webhook URLs
* Private API keys

Use txAdmin placeholders and protected server configuration values whenever
possible.

================================================================================
SUPPORT
=======

GitHub Organization:
https://github.com/Node7Developement

Discord Community:
https://discord.gg/j2H3kjEpgf

When reporting an installation problem, include:

* The complete failed task log
* The recipe version
* The raw recipe URL used
* The txAdmin version
* The operating system
* The first server console error

================================================================================
LICENSE AND CREDITS
===================

NODE7 Framework and recipe integration:
NODE7 Development Studios

Platform:
Cfx.re RedM

txAdmin:
CitizenFX Collective

Third-party resources remain subject to their own licenses and terms.
Review each included repository before redistribution or commercial use.

================================================================================
END OF FILE
===========
