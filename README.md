This is a blogging system where users can see multiple blogs related to various categories and leave their comments. 
======
Users can also pull blog content and post comments using json api.

Steps to run the application after download.

```
$bundle install   # To install gems
```
```
$rake db:create db:migrate db:seed  # To design database
```
```
$rails server     # To start Rails Server
```

======

Admin can edit and delete blogs & categories.

*http://blogging-system.herokuapp.com/admin*

Users can also pull content from mobile phones using json request.

*All categories : http://blogging-system.herokuapp.com/categories.json*

*All blogs: http://blogging-system.herokuapp.com/blogs.json*

*Specific category: http://blogging-system.herokuapp.com/categories/1.json*

*Specific blog: http://blogging-system.herokuapp.com/blogs/1.json*

And can also comment using post request.

http://blogging-system.herokuapp.com/post_comment.json?blog_id=1&comment=comment

This application is also available on heroku. You can access the app with http://blogging-system.herokuapp.com/.