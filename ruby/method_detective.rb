
# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".swapcase!
=> “InVeStIgAtIoN”

"zom".insert(1, "o")
"zom".insert(2, "o")
"zom".insert(-2, "o")
"zom".insert(-3, "o")
"zom".gsub("o", "oo")
=> “zoom”

"enhance".center(width, padstr=" ")
=> "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, ' suspects')
"the usual".concat(" suspects")
"the usual" << " suspects"
"the usual " + "suspects"
=> "the usual suspects" 

" suspects".prepend("the usual")
" suspects".insert(0, "the usual")
=> "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chop!
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..-1)
"The mystery of the missing first letter"[1..-1]
=> "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".squeeze!
"Elementary,    my   dear        Watson!".gsub(/ +/, " ")
=> "Elementary, my dear Watson!"

"z".byte[0]
"z".each_byte.to_a[0]
=> 122 

# (What is the significance of the number 122 in relation to the character z?)
# It's the keycode of z character. It's related to the ASCII (American Standard
# Code for Information Interchange) table, the default format for text files in 
# Ruby. 

"How many times does the letter 'a' appear in this string?".count ("a")
=> 4

