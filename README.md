SmartOrDumb
===========

An Exploration in Smartphone Conversion


# RailsConf 2013

So, I like Rails (a little, though, not a whole lot), and my employer is a rails shop, so I found myself visiting the lovely Portland, OR for this year's RubyConf. 

And let me say, it was delightful, absolutely fantastical in every way. Has nothing to do with the rest of this short story, but the city of Portland is beautiful and I will certainly return there. 

Anyhow, I'm eating lunch, and a particularly helpful Rails tutorial writer sat down next to me. Didn't know who he was until I saw his name badge, but I recognized his name, though I wasn't sure what for at first. 

And we're chatting eventually (other people at the table), and we get to talking about smart phones. Now, I don't have a smart phone. I used to, but I found it resoundingly useless. I find it alienates people from their surroundings, has absolutely no benefit, and isn't even executed well as an idea. 

Suffice it to say, other people around the table got involved at this point, telling me about it's useful for the maps and I can text much easier, etc. I'm not as surprised as I would like to be with their inability to understand I can be familiar with the feature set without desiring one of these infernal machines. (Note: I'm mostly joking, and I might get a smartphone later)

Anyhow, I made mention just getting shell access is absurdly difficult, and my time on the iPhone years ago made me believe it'll never be supported. 

#Talking about the weather

So I went ahead and got a shell for my dumb phone. Something about that Mark Twain quote about people talking about the weather but never doing anything about it. 

This runs over twilio. I added the twilio number in my smartphone under "Shell", and I text it a command and it texts me back the result. QED. 

I can't type pipes or stars in my phone, so I made those words swap out for the characters. 

To get this working, I recommend throwing it up on heroku, and pointing your SMS callback twilio to <<heroku server>>/sms/run. Works great for me.

# Is it any good?

Yes. 

# Things to know

Heroku has a read only filesystem. 

Also, due to how rails is typically deployed, cd won't work like you expect, so I recommend not attempting to use it. 
