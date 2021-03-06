# Assessment

This is an open-book **checkpoint** assessment focusing on building a simple Yellow Pages contact list ruby app using ActiveRecord with SQL database.

<br>
The intention of this assessment is to establish an awareness on your current understanding and how would you progress more effectively in the coming week. Once you're aware of your points of improvement, you can spend more time during the weekend to improve. **There is no pass or fail cases so breath out.** Chillax. =)

<br>
Included is the ruby framework for the assessment, sourced and upgraded from NEXTAcademy "Ar-ToDo" skeleton.

<br><br>

# Purpose
The test is to ensure you are familiar with the basics of ActiveRecord, and how it works with databases like sqlite3 using Ruby. At the end of the assessment, you should be able to:

1) Understand ActiveRecord and How it Works

    1.1) Able to answer what ActiveRecord is
    1.2) Able to answer what ActiveRecord Model and Controllers
    1.3) Able to show how to use Model from ActiveRecord

2) Apply ActiveRecord and Sqlite3 into ruby application

    2.1) Able to show how to use and integrate sqlite3 with ActiveRecord
    2.2) Able to create and migrate a migration file
    2.3) Able to explore sqlite3 database through Ruby Model without using SQL statement.
    2.4) Able to create SQL database table through Ruby Model without using SQL statement.
    2.5) Able to CRUD data into SQL database through Ruby Model without using SQL statement.

3) Know the critical points during application development.

> Critical points:
>
> Refers to naming (capitalization, camel case etc), filenames, classes, relations etc.

    3.1) Able to explain and show critical points for migration files
    3.2) Able to explain and show critical points for database table creation
    3.3) Able to explain and show critical points for model and database relation

4) Using ARGV

<br><br>

# Objectives
The main objective for this assessment is to achieve your contact list app exercise designated by your mentor. This supplied framework should give you a quick start for developing your ruby code.

> Note:
>
> You'll be exposed to GIT version control software.
>
> For the GIT related question, ALWAYS ask your mentor to help you out.
>
> **Do not waste time exploring during the assessment time.**

<br><br>

# App Requirements
You have the freedom to plan your datebase tables, code structures and testing.
However, by minimum it should acheive the following items:

<br>
## 1) User is able to list all the contacts
```
ruby app.rb --list
```

<br>
This will list out all the contact details. Example:

```
$ ruby app.rb --list
list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
$
```

<br><br>

## 2) User is able to add new contact
```
ruby app.rb --add <NAME> <PHONE> <ADDRESS>
```

<br>
This will add a new user named NAME with the phone number that is PHONE
and address like ADDRESS into the database. Example:

```
$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY

$ ruby app.rb --add Kelvin +622152232 "52, White House, Washinton DC"

$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$
```

<br><br>

## 3) User is able to update the contact details
```
ruby app.rb --update <id> <NAME> <PHONE> <ADDRESS>
```

<br>
This will update the user details such as NAME, PHONE
and ADDRESS for the user with the mentioned user ID. If the user
is not found, a friendly error should be raised. Example:

```
$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --update 2 Holloway +12422352425 "22, Okland Street, 41750, NY"

$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +12422352425    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --update 5

Hey, Something went wrong! I can't find that USER! Are you sure that is the
right ID?

$
```


<br><br>

## 4) User is able to delete contact
```
ruby app.rb --delete <id>
```

<br>
This will delete the user with the ID from the list. Should the user is
not found, a friendly error should be raised. Example:

```
$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Holloway    +60129929292    22, Okland Street, 41750, NY
3.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --delete 2

$ ruby app.rb --list

list    Name        Phone           Address
====    ====        =====           ======
1.      Ping        +60163353373    35, Finance Street, 41120, CA
2.      Kelvin      +622152232      52, White House, Washinton DC

$ ruby app.rb --delete 3

Hey, Something went wrong! I can't find that USER! Are you sure that is the
right ID?

$
```

>**IMPORTANT NOTE**:
>
> Take note of the list number. It should be self-updated in an ascending
> order from (1-infinity). Hence, be careful with the id that you're using.
>

<br><br>

## Extra Credit: Integrate each users with his/her company and personal profile
This is a feature request ***AFTER*** finishing all the steps above. Now, expand
your app to be able to hold additional details such as company and personal
profile.

<br>
You're allowed to design your own app commands, like

```
$ ruby app.rb add --user 1 --company "Stark Industries" --pokemon "Mew"
```

and upgrade your table from your existing app.

<br><br>

# Assessment Time
Maximum **5 hours**

<br><br>

# Preparation
1) Coordinate with your mentors for setting up your assessment.


2) Fork this repo out by clicking the "Fork" button on the top on the GitHub page. Ask help when needed.


3) Open a new terminal for your assessment.


4) Access to desktop.
```
$ cd ~/Desktop
```
<br />
5) Execute a cloning from your own repo.
```
$ git clone <your repo address>
```
<br />
6) Enter the repo.
```
$ cd <repo-name>
```
<br />
7) Begin your test
> Note:
>
> Remember to commit small and often. Some good references:
>
> ```$ git add <filename>```
>
> ```$ git commit -m "your commit messages```
>
> ```$ git push```
>
> Ask mentor if you're bound into git issue.
<br />

> **Important Note**:
>
> 7.1) You should write your main functions inside "**app.rb**" file.
>
> 7.2) You can create Additional class object files and place them inside app/ depending on its nature.
>
> 7.3) User will only need to execute "**ruby app.rb**" to run your app.
>
> 7.4) Explore and try to understand the framework, observe the structure.
>
> 7.5) Observe the demo codes and figure out how they require one another.
>
> 7.6) Once done, begin your coding.

<br />
8) Once done, perform your last "git push" to your repo.

9) Inform your mentor with the GitHub link.

10) Your mentor will download it from your GitHub and will perform the assessment for you.

<br><br>
# Good Luck
