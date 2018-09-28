# Instagram Challenge

## User Stories



```
As a user
So I can share my photos
I'd like to sign up to Instagram

As a user
So I can share my photos
I'd like to save my photos on Instagram

As a user
So I can see other peoples' photos
I'd like to see all photos on Instagram

As a user
So no one else can share photos on my account
I'd like to be able to log out of Instagram

As a returning user
So I can see the photos I've shared
I'd like to log in and see my photos

As a user
So I can share enthusiasm for other photos
I'd like to be able to like a photo

As a user
So I can change my mind
I'd like to be able to unlike a photo

As a user
So I can react to a photo
I'd like to be able to comment on a photo

```


## Technologies

- Rails
- ActiveRecord
- Devise to manage user login/logout
- Active Storage for photos


## Classes

- Users (devise)
- Photos (Active Storage)
- Likes
- Comments

## Tickets (in priority order)

- Rails setup: feature test basic routes (1)
- DB setup with Devise gem: user can sign up (2)
- DB setup for other classes (2)
- DB setup for Active Storage (3)
- Feature test: signed up user can see all photos (2)
- Feature test: log out feature prevents photos from
