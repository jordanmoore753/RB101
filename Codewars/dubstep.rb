=begin

input = one string parameter in method

output = the original string parameter but with all
'wub' removed

rules = must have one arguments, return string

ex = song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
  #  =>  WE ARE THE CHAMPIONS MY FRIEND

=end

def wub_decoder(str)
  str.gsub!("WUB", ' ').split.join(' ')
end

song = "WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB"

p wub_decoder(song)




