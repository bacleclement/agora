# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the , command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating schools..."

puts "Stoicism"
  School.create!(
    title: "Stoicism",
    description: "Stoicism is a school of Hellenistic philosophy founded by Zeno of Citium in Athens in the early 3rd century BC. It was heavily influenced by certain teachings of Socrates, while Stoic physics are largely drawn from the teachings of the philosopher Heraclitus. Stoicism is predominantly a philosophy of personal ethics informed by its system of logic and its views on the natural world. According to its teachings, as social beings, the path to happiness for humans is found in accepting the moment as it presents itself, by not allowing oneself to be controlled by the desire for pleasure or fear of pain, by using one’s mind to understand the world and to do one’s part in nature's plan, and by working together and treating others fairly and justly.",
    badge: "blabl",
    photo: "image",
    position: 1,
    xp: 4567
  )

puts "Buddhism"
  School.create!(
    title: "Buddhism",
    description: "Buddhism is the world's fourth-largest religion with over 520 million followers, or over 7\% of the global population, known as Buddhists.[web 1][5] An Indian religion, Buddhism encompasses a variety of traditions, beliefs and spiritual practices largely based on original teachings attributed to the Buddha and resulting interpreted philosophies. Buddhism originated in ancient India as a Sramana tradition sometime between the 6th and 4th centuries BCE, spreading through much of Asia. Two major extant branches of Buddhism are generally recognized by scholars: Theravada (Pali: \"The School of the Elders\") and Mahayana (Sanskrit: \"The Great Vehicle\").",
    badge: "blabl",
    photo: "image",
    position: 2,
    xp: 3456
  )

puts "Epicureanism"
  School.create!(
    title: "Epicureanism",
    description: "Epicureanism is a system of philosophy based upon the teachings of the ancient Greek philosopher Epicurus, founded around 307 BC. Epicurus was an atomic materialist, following in the steps of Democritus. His materialism led him to a general attack on superstition and divine intervention. Following Aristippus—about whom very little is known—Epicurus believed that what he called \"pleasure\" (ἡδονή) was the greatest good, but that the way to attain such pleasure was to live modestly, to gain knowledge of the workings of the world, and to limit one's desires. This would lead one to attain a state of tranquility (ataraxia) and freedom from fear as well as an absence of bodily pain (aponia). The combination of these two states constitutes happiness in its highest form. Although Epicureanism is a form of hedonism insofar as it declares pleasure to be its sole intrinsic goal, the concept that the absence of pain and fear constitutes the greatest pleasure, and its advocacy of a simple life, make it very different from \"hedonism\" as colloquially understood.",
    badge: "blabl",
    photo: "image",
    position: 3,
    xp: 2345
  )

puts "Lyceum"
  School.create!(
    title: "Lyceum",
    description: "The Lyceum had been used for philosophical debate long before Aristotle. Philosophers such as Prodicus of Ceos, Protagoras, and numerous rhapsodes had spoken there. The most famous philosophers to teach there were Isocrates, Plato (of The Academy), and the best-known Athenian teacher, Socrates.[4] In addition to military training and educational pursuits, the Lyceum also housed Athenian Assembly meetings before the Pnyx became the official meeting place in the 5th century BCE. Cult practices of various groups were also held at the Lyceum.",
    badge: "blabl",
    photo: "image",
    position: 4,
    xp: 2134
  )

puts "Minimalism"
  School.create!(
    title: "Minimalism",
    description: "Minimalism isn\’t about any of those things, but it can help you accomplish them. If you desire to live with fewer material possessions, or not own a car or a television, or travel all over the world, then minimalism can lend a hand. But that’s not the point.",
    badge: "blabl",
    photo: "image",
    position: 5,
    xp: 1235
  )

puts "schools created"


puts "stoic master"
  user1 = User.create! :email => 'harry@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile1 = Profile.create!(
      user_id: user1.id,
      school_id: 1,
      username: "harry",
      grade: "master",
      role: "wise",
      xp: 100
    )

puts "Buddhism master"
  user2 = User.create! :email => 'sam@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile2 = Profile.create!(
      user_id: user2.id,
      school_id: 2,
      username: "sam",
      grade: "master",
      role: "Governor",
      xp: 100
    )

puts "Epicureanism master"
  user3 = User.create! :email => 'jo@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile3 = Profile.create!(
      user_id: user3.id,
      school_id: 3,
      username: "jo",
      grade: "master",
      role: "Rhetor",
      xp: 100
    )

puts "Lyceum master"
  user4 = User.create! :email => 'luc@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile4 = Profile.create!(
      user_id: user4.id,
      school_id: 4,
      username: "luc",
      grade: "master",
      role: "Rhetor",
      xp: 100
    )

puts "masters created"

puts "stoic teacher 1"
  user5 = User.create! :email => 'jim@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile5 = Profile.create!(
      user_id: user5.id,
      school_id: 1,
      username: "jim",
      grade: "teacher",
      role: "Priest",
      xp: 100
    )

puts "stoic teacher 2"
  user6 = User.create! :email => 'sim@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile6 = Profile.create!(
      user_id: user6.id,
      school_id: 1,
      username: "sim",
      grade: "teacher",
      role: "wise",
      xp: 100
    )

puts "stoic teacher 3"
  user7 = User.create! :email => 'ivy@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile7 = Profile.create!(
      user_id: user7.id,
      school_id: 1,
      username: "ivy",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "stoic teacher 4"
  user8 = User.create! :email => 'stan@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile8 = Profile.create!(
      user_id: user8.id,
      school_id: 1,
      username: "stan",
      grade: "teacher",
      role: "Governor",
      xp: 100
    )

puts "teachers stoic created"

puts "Buddhism teacher 1"
  user9 = User.create! :email => 'joy@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile9 = Profile.create!(
      user_id: user9.id,
      school_id: 2,
      username: "joy",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "Buddhism teacher 2"
  user10 = User.create! :email => 'lucas@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile10 = Profile.create!(
      user_id: user10.id,
      school_id: 2,
      username: "lucas",
      grade: "teacher",
      role: "Governor",
      xp: 100
    )

puts "Buddhism teacher 3"
  user11 = User.create! :email => 'arthur@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile11 = Profile.create!(
      user_id: user11.id,
      school_id: 2,
      username: "arthur",
      grade: "teacher",
      role: "Rhetor",
      xp: 100
    )

puts "Buddhism teacher 4"
  user12 = User.create! :email => 'hopy@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile12 = Profile.create!(
      user_id: user12.id,
      school_id: 2,
      username: "hopy",
      grade: "teacher",
      role: "Rhetor",
      xp: 100
    )

puts "teachers Buddhism created"

puts "Epicureanism teacher 1"
  user13 = User.create! :email => 'clem@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile13 = Profile.create!(
      user_id: user13.id,
      school_id: 3,
      username: "clem",
      grade: "teacher",
      role: "Priest",
      xp: 100
    )

puts "Epicureanism teacher 2"
  user14 = User.create! :email => 'gary@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile14 = Profile.create!(
      user_id: user14.id,
      school_id: 3,
      username: "gary",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "Epicureanism teacher 3"
  user15 = User.create! :email => 'helene@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile15 = Profile.create!(
      user_id: user15.id,
      school_id: 3,
      username: "helene",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "Epicureanism teacher 4"
  user16 = User.create! :email => 'jaja@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile16 = Profile.create!(
      user_id: user16.id,
      school_id: 3,
      username: "jaja",
      grade: "teacher",
      role: "Rhetor",
      xp: 100
    )

puts "teachers Epicureanism created"

puts "Lyceum teacher 1"
  user17 = User.create! :email => 'gady@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile17 = Profile.create!(
      user_id: user13.id,
      school_id: 4,
      username: "gady",
      grade: "teacher",
      role: "Priest",
      xp: 100
    )

puts "Lyceum teacher 2"
  user18 = User.create! :email => 'lola@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile18 = Profile.create!(
      user_id: user18.id,
      school_id: 4,
      username: "lola",
      grade: "teacher",
      role: "Priest",
      xp: 100
    )

puts "Lyceum teacher 3"
  user19 = User.create! :email => 'johny@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile19 = Profile.create!(
      user_id: user19.id,
      school_id: 4,
      username: "johny",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "Lyceum teacher 4"
  user20 = User.create! :email => 'bob@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
  profile20 = Profile.create!(
      user_id: user20.id,
      school_id: 4,
      username: "bob",
      grade: "teacher",
      role: "Wise",
      xp: 100
    )

puts "teachers Lyceum created"

puts "Technology category"
  cat1 = Category.create!(
      name: "Technology",
    )

puts "Ethic category"
  cat1 = Category.create!(
      name: "Ethic",
    )

puts "Ecology category"
  cat1 = Category.create!(
      name: "Ecology",
    )

puts "Religion category"
  cat1 = Category.create!(
      name: "Religion",
    )

puts "Lifestyle category"
  cat1 = Category.create!(
      name: "Technology",
    )

puts "Categories have been created"
