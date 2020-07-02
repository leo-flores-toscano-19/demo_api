(Copy and paste the following template to create your README file)
## Notes
*Please do not supply your name or email address in this document. We're doing our best to remain unbiased.*


### Date
July 2, 2020

### Location of deployed application
If applicable, please provide the url where we can find and interact with your running application.

Application is available to run in :https://demo-api-mvp.herokuapp.com/

Sample:
curl --location --request POST 'https://demo-api-mvp.herokuapp.com/user_token' \
--header 'Content-Type: application/json' \
--data-raw '{
	"auth": {	
		"email": "user@something.com",
		"password": "givemeAPasswordPlease"
	}
}'

### Time spent
5-6 hrs core of the app
2-3 hrs on a failed attempt to implement the login with github and add the specs with rspec
2.5 hrs to make it work on heroku. Mustly fixing issue with the db connection.

### Assumptions made
Just followed the instructions of your document as close as I could.

### Shortcuts/Compromises made
If applicable. Did you do something that you feel could have been done better in a real-world application? Yes TDD. 

I got stuck with the omnitocken trying to implement the github login then I thought about adding tests with rspec but as It was taken time and I aborted.

I have to do your test and one for other company this week. I adjusted time.

### Stretch goals attempted
If applicable, use this area to tell us what stretch goals you attempted. What went well? What do you wish you
could have done better? 

I did not attempt basic login as I saw your note regarding curl. I had that running so I only pursue the social app login. I tried but could not resolve the issue and I felt I spent to much time on it.

I am honest I have this app working and I need to work in different take home test. I just went for the publication of the app in a prod "like environment" in heroku.

### Instructions to run assignment locally

$ bundle install

Create mysql database and update database.yml with credentials. 

1 First step and this goes to any app not just ruby

CREATE DATABASE your_db_name;

2 Check for existance of a user and or create one

CREATE USER 'your_username'@'localhost'
IDENTIFIED BY 'your_password';

3. Grant privileges for that user

SHOW GRANTS FOR 'your_username'@'localhost'
GRANT ALL PRIVILEGES ON your_db_name.*
TO 'your_username'@'localhost'

Now execute the migration

$ rails db:create
$ rails db:migrate
$ rails db:seed

Start the server
$ rails s

### What did you not include in your solution that you want us to know about?
Were you short on time and not able to include something that you want us to know
about? Please list it here so that we know that you considered it.

I have mentioned in the other points yes. Login with social app. Include tests too.

### Other information about your submission that you feel it's important that we know if applicable.
### Your feedback on this technical challenge
Have feedback for how we could make this assignment better? Please let us know.
