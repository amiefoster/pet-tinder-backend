# Dander

Hi welcome to Dander backend API!

Dander is a Tinder clone for people who love pets! 
You can find someone to match with based on their furry friends!
This is the backend to use the with the demo!

# Directions 

Click "Find Matches" to look through profiles! Click on the profile to read more about the owner. Swipe left if youre not interested and swipe right to like them. 
To view mutual matches click on "Matches". Here you will see all the profiles that you liked and that like you back. 
To view/edit your profile click "My Profile"
## Run Locally

Clone the project

```bash
  git clone https://github.com/amiefoster/pet-tinder-backend
```
 ### NOTE: You will also need to fork and clone the frontend see the frontend READ.me for more instructions

```bash
  git clone https://github.com/amiefoster/pet-tinder-frontend
```

Go to the project directory

```bash
  cd phase-3-sinatra-react-project
```

Install dependencies

```bash
  bundle install

```

Create Migrations

```bash
  bundle exec rake db:migrate
```

Start seed file

```bash
  bundle exec rake db:seed

```

Start the server

```bash
   bundle exec rake server
```

## Authors

- [@amiefoster](https://github.com/amiefoster)

  