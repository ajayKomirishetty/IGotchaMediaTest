TO SETUP THE PROJECT:

rake db:migrate
rake db:seed

Then you should be able to do:

rails server

and go to http://localhost:3000

WHAT THE PROJECT IS RIGHT NOW:

1. We have CARS in the database, which belong to a BRAND.
2. We can add cars and select a brand
3. That's it, it gets added to the list

THINGS TO DO:

GIT
1. Start a new branch. Right now, you're on the "master" branch. Name your new branch "railstest" and switch to it to begin the test

Routing:

1. If you open the root of the project, it shows you a "welcome to rails" page. Change the routes so it goes to CarsController#Index instead and gives you the list of cars

Model: Car

1. Make sure that model (attribute) and number of doors (doors attribute) are required in the form (the form does not have to change, but the car should NOT save if the fields are not filled in with an optional error message why)
2. Make sure the number of doors can only be 2 or 4
3. Make sure the owner_email needs to have (to save):
    1. at least a letter before
    2. an "@" sign
    3. followed by at least a letter after
4. Add the "paperclip" gem and add a "photo" attribute to the model and modify the form in order to upload a picture of the car and save it (by default it will save to the filesystem which is ok) (do NOT spend more than 30-60 minutes here without asking questions or just skip if you can not do it)
5. Show the photo of the car on the CarsController#show page (when we click on the "Show" link on the list of cars)

Model: Repair

1. The model does not exist. Create it (I would use scaffolding, the forms do not have to be styled or pretty - optional, 
bootstrap 3 is installed and can be used to make things prettier)
2. 1 car can have MANY repairs
3. We should be able to get a list of repairs by going to /cars/_car_id_/repairs
4. Going to http://localhost/repairs.json should list all the repairs in the database for all cars with the id of each entry, and the repair_date
5. A repair needs to track the repair date, so make sure you have the "repair_date" as an attribute (it's a "datetime" and it can not be null/empty) 
you do not need to add other attributes than the repair date

CarsController#index view

1. Modify the index (URL is /cars) of cars so it shows the number of repairs on each car
2. Add a way to add repairs to a car on this page

GIT

1. Commit what you did to your "railstest" branch

You are allowed to use the internet/books/whatever in order to complete the test! You can even ask me questions, and do not feel bad about it. Don't get stuck 30 minutes on a question! You're not "losing" points or looking bad by asking questions, it'll just show you don't mind asking for help and working in a team!

Good luck!

