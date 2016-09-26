def dictionary
dictionary={
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" =>  "@",
  "and" => "&"
}
dictionary
end

def word_substituter(tweet)

  tweet_arr=tweet.split(" ")
  tweet_arr.each do |word|
    dictionary.each do |long, abbrev|
      if long.upcase==word.upcase
        word.replace(abbrev)
      end
    end
  end
  new_tweet=tweet_arr.join(" ")
  return new_tweet
end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
  return array
end

def selective_tweet_shortener(tweet)
  #tweet_arr=tweet.split(" ")
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length<140
    tweet
  else
    new_tweet=word_substituter(tweet)
    if new_tweet.length>140
      new_tweet=new_tweet[0..136] + "..."
    end
  end
end
