class Greeter
  def greet
    "Hi, I am Frank!"
  end

  def quote tag=nil
    quotes = {
      :alcohol => [
        "Alcohol may be man's worst enemy, but the bible says love your enemy.",
        
      ],
      :life => [
        "The best revenge is massive success.",
        "The big lesson in life, baby, is never be scared of anyone or anything.",
        "I'm gonna live till I die.",
        "Don’t hide your scars. They make you who you are"
      ],
      :love => [
        "....A simple I love you means more than money....",
        "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
      ]
    }
    
    tag = tag.to_sym if tag
    
    if tag && quotes[tag]
      quotes[tag][rand(0...quotes[tag].size)]

      # this may also be written more simply as:
      # quotes[tag].sample
    else
      "The best is yet to come and won't that be fine."
    end
  end
end
