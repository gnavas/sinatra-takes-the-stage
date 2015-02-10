class Greeter
  def greet 
  	"Hello There"
  end

  def quote tag=nil

  categories = {
	:alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.",
		"The cigarettes you light one after another won’t help you forget her.","I feel sorry for people that don't drink, because when they wake up in the morning, that is the best they are going to feel all day-"],
	:love => ["You may be a puzzle, but I like the way the parts fit",
		"....A simple I love you means more than money....",
		"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."],

	:life => ["The best revenge is massive success.",
		"The big lesson in life, baby, is never be scared of anyone or anything.",
		"I'm gonna live till I die.",
		"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels."]
}	
if tag && categories[tag] 
"#{categories[tag].sample}"

else 
"Please pass the correct parameter = life, alcohol, or love!!"
end	
end
# def picture 
# 	send_file "./public/sinatra.jpg"
# end	
end


