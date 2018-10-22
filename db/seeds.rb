# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kay = User.create(name: "Kay", location: "Mars")
aliasgar = User.create(name: "Aliasgar", location: "Jupiter")
billie = User.create(name: "Billie", location: "London")
ali = User.create(name: "Ali", location: "New York")
bobby = User.create(name: "Bobby", location: "Cloud 9")
ciaran = User.create(name: "Ciaran", location: "Himalayas")
jo = User.create(name: "Jo", location: "Stevenage")
katy = User.create(name: "Katy", location: "Nowhere")
cam = User.create(name: "Cam", location: "Death Star")

post1 = Post.create(title: "Tough week", content: "Looking forward to building an awesome app this week with Ali", media_element: "", author_id: kay.id)
post2 = Post.create(title: "I love JavaScript", content: "JS is mile sbteer than Ruby, sorry but it's true!", media_element: "", author_id: aliasgar.id)
post3 = Post.create(title: "Blogs are awesome", content: "Please let me do a blog every week", media_element: "", author_id: billie.id)
post4 = Post.create(title: "React please", content: "I'm ready to move on, oh please can we start learning React", media_element: "", author_id: ali.id)
post5 = Post.create(title: "Dam Fetch", content: "Should've read the README", media_element: "", author_id: bobby.id)
post6 = Post.create(title: "Node.js", content: "I'm learning Node.js", media_element: "", author_id: ciaran.id)
post7 = Post.create(title: "Vegan's rule", content: "Anyone want some vegan donuts?", media_element: "", author_id: jo.id)
post8 = Post.create(title: "Details", content: "If I get another error...", media_element: "", author_id: katy.id)
post9 = Post.create(title: "Lost in translation?", content: "What did you say? Pajamas?", media_element: "", author_id: cam.id)

comment1 = Comment.create(comment: "Ali is really talented", user_id: billie.id, post_id: post1.id)
comment2 = Comment.create(comment: "You're so lucky!", user_id: cam.id, post_id: post1.id)
comment3 = Comment.create(comment: "Really???!!!", user_id: katy.id, post_id: post2.id)
comment4 = Comment.create(comment: "Noooooooo, Ruby all the way", user_id: jo.id, post_id: post2.id)
comment5 = Comment.create(comment: "Are you feeling ok?", user_id: ali.id, post_id: post3.id)
comment6 = Comment.create(comment: "Can you do mine please?", user_id: bobby.id, post_id: post3.id)
comment7 = Comment.create(comment: "I love libraries", user_id: ciaran.id, post_id: post4.id)
comment8 = Comment.create(comment: "What's React?", user_id: billie.id, post_id: post4.id)
comment9 = Comment.create(comment: "Should've gone to specsavers", user_id: ali.id, post_id: post5.id)
comment10 = Comment.create(comment: "Poor baby", user_id: cam.id, post_id: post5.id)
comment11 = Comment.create(comment: "Yeah!", user_id: aliasgar.id, post_id: post6.id)
comment12 = Comment.create(comment: "Where from?", user_id: kay.id, post_id: post6.id)
comment13 = Comment.create(comment: "UMMMMMMMMMMMMMMM", user_id: ali.id, post_id: post7.id)
comment14 = Comment.create(comment: "Do you have any with chocolate filling?", user_id: kay.id, post_id: post7.id)
comment15 = Comment.create(comment: "Deep breaths", user_id: ciaran.id, post_id: post8.id)
comment16 = Comment.create(comment: "Ah man, don't get me started...", user_id: bobby.id, post_id: post8.id)
comment17 = Comment.create(comment: "You're the best", user_id: billie.id, post_id: post9.id)
comment18 = Comment.create(comment: "No I said Bananas!", user_id: katy.id, post_id: post9.id)

# Replies to own post
comment19 = Comment.create(comment: "Why thank you Kay", user_id: aliasgar.id, post_id: post1.id)
comment20 = Comment.create(comment: "Udemy!", user_id: ciaran.id, post_id: post6.id)
comment21 = Comment.create(comment: "You don't know what React is?", user_id: ali.id, post_id: post4.id)
comment22 = Comment.create(comment: "A new type of exercise", user_id: billie.id, post_id: post4.id)
comment23 = Comment.create(comment: "Jeeeeeezzzzzzzzz", user_id: ali.id, post_id: post4.id)