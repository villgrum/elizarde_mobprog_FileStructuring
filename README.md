# elizarde_mobprog

## Project Description

A Facebook-inspired mobile newsfeed application developed using Flutter.

---

## Laboratory Activity 1

### Laboratory Discussion

Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.

- I added the post image directly to the newsfeed card so it could display pictures when needed. I also made it optional because not every post has to contain an image. For example, Mhark's post only shows its text and details, while Lex's post includes the NU Pep Squad picture. This way, I can use the same card for both posts without having to create a separate layout for posts with pictures and those without them.

---

## Laboratory Activity 2A

### Laboratory Discussion

Discuss how you manage to do the posts and the notification efficiently. Also, how you've accomplished the enhancement states the challenges and how you address them.

- I managed the posts by using a ListView.builder and a list of post information. This allowed me to display multiple posts using the same NewsfeedCard widget instead of creating a separate layout for every user. I also added individual profile pictures and made the post images optional, so each post can display text only or include its own image.

- For the notification feature, I created a separate NotificationScreen and a reusable NotificationWidget. The widget accepts the user's name, post, and description as parameters, allowing the same layout to be reused for different notifications.

- One of the challenges I encountered was making the post images display correctly for each user. At first, multiple posts were showing the same image because they were using the default image path. I addressed this by adding a separate postImagePath for each post and passing it to the NewsfeedCard. Another challenge was organizing the notification screen and connecting the required files and imports. I addressed this by separating the notification screen and widget into their own files.

- Through these enhancements, I was able to make the newsfeed more organized, reusable, and flexible while keeping the code easier to manage.
