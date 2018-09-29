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

| User |
|-----|
| has unique email
| has password
| has many posts
| has many likes (only 1 like per post)
| has many comments

| Post |
|-----|
| has user_id
| has associated image file
| has many likes
| has many comments

| Likes (join) |
|----|
| has user_id
| has post_id

| Comments |
|-----|
| has text
| has user_id
| has post_id



