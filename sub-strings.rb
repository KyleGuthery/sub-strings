def substrings(string, dictionary)
  array = string.split(" ")
  hashed = Hash.new
  array.each do |item|
    dictionary.each do |subs|
      if item.include?(subs)
        if hashed[subs]
          hashed[subs] += 1
        else
          hashed[subs] = 1
        end
      end
    end
  end
  p hashed
  return hashed
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)