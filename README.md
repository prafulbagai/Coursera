Installation instructions:-

1) Download the app and extract it.

2) Create a virtual environment inside the extracted folder

virtualenv venv
source venv/bin/activate

3) Next install the requirements pip install -r requirement.txt

4) Create a DB group10 with user as root and password ``

5) Next create the tables using python manage.py syncdb.

6) Now import the sql file provided in the in the folder.

7) If everything works well till now, you should now be good to go. Run python manage.py runserver.

8) Browse to `127.0.0.1:8000/courses`

9) You can also have a look at the demo URL of the app (deployed on Heroku):- 
https://infinite-retreat-7043.herokuapp.com/courses/