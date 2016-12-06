

# Book.create(
#   title: 'Dark Matter',
#   description: '“Are you happy with your life?” Those are the last words Jason Dessen hears before the masked abductor knocks him unconscious. Before he awakens to find himself strapped to a gurney, surrounded by strangers in hazmat suits. Before a man Jason’s never met smiles down at him and says, “Welcome back, my friend.”',
#   author: 'Blake Crouch',
#   pages: 343,
#   published: 'July 26th 2016 by Crown'
#   )

# Book.create(
#   title: 'Shantaram',
#   description: 'It took me a long time and most of the world to learn what I know about love and fate and the choices we make, but the heart of it came to me in an instant, while I was chained to a wall and being tortured." So begins this epic, mesmerizing first novel set in the underworld of contemporary Bombay.',
#   author: 'Gregory David Roberts',
#   pages: 936,
#   published: '2004 by Scribe'
#   )

# Book.create(
#   title: 'A Problem from Hell',
#   description: 'Winner of the 2003 Pulitzer Prize For General Nonfiction National Book Critics Circle Award WinnerIn her award-winning interrogation of the last century of American history, Samantha Power -- a former Balkan war correspondent and founding executive director of Harvards Carr Center for Human Rights Policy -- asks the haunting question; Why do American leaders who vow "never again" repeatedly fail to stop genocide? Drawing upon exclusive interviews with Washingtons top policy makers, access to newly declassified documents, and her own reporting from the modern killing fields, Power provides the answer in "A Problem from Hell" -- a groundbreaking work that tells the stories of the courageous Americans who risked their careers and lives in an effort to get the United States to act.',
#   author: 'Samantha Power',
#   pages: 620,
#   published: 'May 6th 2003 by Harpperen'
#   )

# Book.create(
#   title: 'Sapiens',
#   description: '100,000 years ago, at least six human species inhabited the earth. Today there is just one. Us. Homo sapiens. How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms?',
#   author: 'Yuval Noah Harari',
#   pages: 443,
#   published: '2014 by Harvill Secker'
#   )

# Book.create(
#   title: 'Infinite Jest',
#   description: 'A gargantuan, mind-altering comedy about the Pursuit of Happiness in America. Set in an addicts halfway house and a tennis academy, and featuring the most endearingly screwed-up family to come along in recent fiction, Infinite Jest explores essential questions about what entertainment is and why it has come to so dominate our lives; about how our desire for entertainment affects our need to connect with other people; and about what the pleasures we choose say about who we are.',
#   author: 'David Foster Wallace',
#   pages: 1088,
#   published: '2005 by Back Bay Books'
#   )

# Book.create(
#   title: 'Heroes of The Frontier',
#   description: "A captivating, often hilarious novel of family, loss, wilderness, and the curse of a violent America, Dave Eggers' Heroes of the Frontier is a powerful examination of our contemporary life and a rousing story of adventure. Josie and her children's father have split up, she's been sued by a former patient and lost her dental practice, and she's grieving the death of a young man senselessly killed. When her ex asks to take the children to meet his new fiancee's family, Josie makes a run for it, figuring Alaska is about as far as she can get without a passport. Josie and her kids, Paul and Ana, rent a rattling old RV named the Chateau, and at first their trip feels like a vacation: They see bears and bison, they eat hot dogs cooked on a bonfire, and they spend nights parked along icy cold rivers in dark forests. But as they drive, pushed north by the ubiquitous wildfires, Josie is chased by enemies both real and imagined, past mistakes pursuing her tiny family, even to the very edge of civilization.",
#   author: 'Dave Eggers',
#   pages: 400,
#   published: 'July 26th 2016 by Knopf Publishing Group'
#   )

# Book.create(
#   title: 'The First 15 Lives of H.A.',
#   description: 'No matter what he does or the decisions he makes, when death comes, Harry always returns to where he began, a child with all the knowledge of a life he has already lived a dozen times before. Nothing ever changes. Until now. As Harry nears the end of his eleventh life, a little girl appears at his bedside. ‘I nearly missed you, Doctor August,’ she says. ‘I need to send a message.’ This is the story of what Harry does next, and what he did before, and how he tries to save a past he cannot change and a future he cannot allow.',
#   author: 'Claire North',
#   pages: 405,
#   published: 'October 21st 2014 by Redhook'
#   )

# Book.create(
#   title: 'Fortune Smiles',
#   description: "In six masterly stories, Johnson delves deep into love and loss, natural disasters, the influence of technology, and how the political shapes the personal. 'Nirvana' portrays a programmer, whose wife has a rare disease, finding solace in a digital simulacrum of the president of the United States. In 'Hurricanes Anonymous,' a young man searches for the mother of his son in a Louisiana devastated by Hurricanes Katrina and Rita. “George Orwell Was a Friend of Mine” follows a former warden of a Stasi prison in East Germany who vehemently denies his past, even as pieces of it are delivered in packages to his door. And in the unforgettable title story, Johnson returns to his signature subject, North Korea, depicting two defectors from Pyongyang who are trying to adapt to their new lives in Seoul, while one cannot forget the woman he left behind. Unnerving, riveting, and written with a timeless quality, these stories confirm Johnson as one of America’s greatest writers and an indispensable guide to our new century.",
#   author: 'Adam Johnson',
#   pages: 320,
#   published: 'August 27th 2015 by Doubleday'
# )
counter = 1

20.times do
User.create(
  name: Faker::Name.first_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )


 Review.create(comment: Faker::Lorem.paragraph, rating: rand(5), book_id: rand(9), user_id: counter)
   counter += 1
 end

20.times do
  Review.create(comment: Faker::Lorem.paragraph, rating: rand(5), book_id: rand(9), user_id: rand(20))
end
