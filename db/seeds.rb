# Create some categories
cool = Category.create(name: 'Cool')
funny = Category.create(name: 'Funny')
serious = Category.create(name: 'Serious')

# Create some users
user1 = User.create(username: 'RealBigFish', email: 'fish@example.com')
user2 = User.create(username: 'JokeMaster', email: 'joke@example.com')
user3 = User.create(username: 'DeepThinker', email: 'thinker@example.com')

# Create some posts
post1 = Post.create(title: 'So Awesome', content: 'Man am I a great blogger OR WHAT!')
post2 = Post.create(title: 'A Funny Story', content: 'This is a hilarious post!')
post3 = Post.create(title: 'Serious Thoughts', content: 'Let us ponder the meaning of life.')

# Associate posts with categories
post1.categories << cool
post2.categories << funny
post3.categories << serious
post3.categories << cool

# Create some comments
Comment.create(content: 'This was great!', user: user1, post: post1)
Comment.create(content: 'LOL, so funny!', user: user2, post: post2)
Comment.create(content: 'Very deep.', user: user3, post: post3)
Comment.create(content: 'I agree!', user: user1, post: post3)
