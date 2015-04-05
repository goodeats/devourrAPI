User.delete_all
Post.delete_all
Comment.delete_all

users = User.create!([
  {name: 'pat needham', username: 'pat', email: 'pat@pat.me', password_digest: 'secret', token: 'insert_token_here', bio: 'i cook great meals', avatar: 'my pic', website: 'http://www.patneedham.me', location: 'somerville, ma', privacy: '1'},
  {name: 'patrice needham', username: 'patrice', email: 'patrice@patrice.me', password_digest: 'secret1', token: 'insert_token_here', bio: 'i cook great meals as patrice', avatar: 'my pic', website: 'http://www.patneedham.me', location: 'somervillian, ma', privacy: '1'},
  {name: 'guy fieri', username: 'guy', email: 'guy@guy.me', password_digest: 'secret', token: 'insert_token_here', bio: 'i cook great meals on tv', avatar: 'my pic', website: 'http://www.foodnetwork.com', location: 'new york, ny', privacy: '0'}
  ])

posts = Post.create!([
  {title: 'omlet', description: 'look at my omlet', likes: 1, reheats: 3, mades: 0, stashes: 0, location: 'home'},
  {title: 'sushi', description: 'went to japan to get sushi', likes: 10, reheats: 3, mades: 1, stashes: 6, location: 'tokyo, japan'},
  {title: 'healthy salad', description: '#yum #healthy #kale', likes: 1, reheats: 0, mades: 2, stashes: 4, location: 'home'},
  {title: 'buffalo burger', description: 'hell yeah #guyfieri', likes: 100, reheats: 320, mades: 20, stashes: 10, location: 'diner'}
  ])

comments = Comment.create!([
  {body: 'nice!', picture: 'none', likes: 0},
  {body: 'good job!', picture: 'none', likes: 0},
  {body: 'hot!', picture: 'none', likes: 0}
  ])

