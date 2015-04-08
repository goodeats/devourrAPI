User.delete_all
Post.delete_all
Comment.delete_all

users = User.create!([
  {name: 'pat needham', username: 'pat', email: 'pat@pat.me', password_digest: 'secret', token: 'insert_token_here', bio: 'i cook great meals', avatar: 'http://i.imgur.com/j3PNveRm.jpg', website: 'http://www.patneedham.me', location: 'somerville, ma', privacy: :personal},
  {name: 'patrice needham', username: 'patrice', email: 'patrice@patrice.me', password_digest: 'secret1', token: 'insert_token_here', bio: 'i cook great meals as patrice', avatar: 'http://i.imgur.com/rwdV8Fzm.jpg', website: 'http://www.patneedham.me', location: 'somervillian, ma', privacy: :friends},
  {name: 'guy fieri', username: 'guy', email: 'guy@guy.me', password_digest: 'secret', token: 'insert_token_here', bio: 'i cook great meals on tv', avatar: 'http://media.salon.com/2014/08/guy_fieri.jpg', website: 'http://www.foodnetwork.com', location: 'new york, ny', privacy: :global}
  ])

posts = Post.create!([
  {title: 'omlet', description: 'look at my omlet', picture: 'http://consumerrecipe.conagrafoods.com/uploadedImages/img_5802_2625.jpg', likes: 1, reheats: 3, mades: 0, stashes: 0, location: 'home'},
  {title: 'sushi', description: 'went to japan to get sushi', picture: 'http://media-cdn.tripadvisor.com/media/photo-s/05/31/7b/3a/nice-selection-of-sushi.jpg', likes: 10, reheats: 3, mades: 1, stashes: 6, location: 'tokyo, japan'},
  {title: 'healthy salad', description: '#yum #healthy #kale', picture: 'http://popularblogsite.com/wp-content/uploads/2013/12/healthy-salad.jpg', likes: 1, reheats: 0, mades: 2, stashes: 4, location: 'home'},
  {title: 'buffalo burger', description: 'hell yeah #guyfieri', picture: 'http://wildideabuffalo.com/assets/Buffalo-Burger-close-with-chips1.jpg', likes: 100, reheats: 320, mades: 20, stashes: 10, location: 'diner'}
  ])

comments = Comment.create!([
  {body: 'nice!', picture: 'none', likes: 0},
  {body: 'good job!', picture: 'none', likes: 0},
  {body: 'hot!', picture: 'none', likes: 0}
  ])

users[0].posts << posts[0]
users[0].posts << posts[1]
users[1].posts << posts[2]
users[2].posts << posts[3]

posts[0].comments << comments[0]
posts[1].comments << comments[0]
posts[2].comments << comments[1]
posts[3].comments << comments[2]

users[1].comments << comments[1]
users[0].comments << comments[2]
users[2].comments << comments[0]
