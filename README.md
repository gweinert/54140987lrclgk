##Week 5 Assessment

Fork and clone this repo! Create a pull request when you're done.

###1. Survey says

Answer [these qustions via Google Forms](https://docs.google.com/forms/d/1XVf9Z9LMsKKtb--iackS1w9Ilpw8Er60j5246Kgg0XE/viewform).

###2. Playlister, the App

As a personal DJ to the stars, you need an app to create playlists for the users on your site.

####Setup
Go to the `playlister` directory and set this app up:

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

Check out `db/schema.rb`. You'll see that there are users, songs, playlists and a `playlist_selections` join table. Our seeds file has given you some users and songs, and one playlist to start you off.

####Your Mission

1. Debug the root page, which is `playlist#index`. The view itself doesn't need to be changed. Follow the errors and get it to load properly.

2. Create a NEW form for a playlist. You should be able to select an owner (User) from a drop down, and to select one or many songs via checkboxes.

3. Include the `new` and `create` controller actions. You do not need to write `edit` or `update` but the form should be reusable for EDIT.

4. Make sure your associations are complete. Every playlist needs a unique name and an owner. Destroying a user should destroy their playlists. Destroying a playlist should remove the song associations.  *Note: Don't create any new controllers or migrations for these criteria*

**Don't worry about styling!** It's going to be ugly, and that's okay.
