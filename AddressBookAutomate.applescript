# A selection of random first names that we can choose from.
set first_names to {"Kyle", "Michael", "Rob", "Billy", "George", "Jose", "Franklin", "Trevor", "John", "Alex", "Bill", "Crazy Ex", "Jen", "Lane", "Ariel", "James", "Rachel", "Dave", "Anne", "William", "David", "Kenneth", "Paul", "Steven", "Timothy", "Eric", "Scott", "Stephen", "Roger", "Juan", "Justin", "Terry", "Fred", "Louis", "Mary", "Linda", "Nancy", "Betty", "Carol", "Sarah", "Melissa", "Anna", "Amy", "Barbara", "Shannon", "Debra"}

# A selection of random last names that we can choose from.
set last_names to {"McDonald", "Smith", "Doogle", "McSmitherton", "Fakie", "Hunter", "Franklin", "Smoke", "Coolerton", "Donald", "Duck", "Shannon", "Gearton", "Davis", "Johnson", "Brown", "Moore", "Robertson", "Jackson", "Garcia", "Clark", "King", "Nelson", "Carter", "Thompson", "Hill", "Baker", "Morris", "Riveria", "Cooper", "Kelly", "Barnes", "Ross", "Jenkins", "Huges", "Flores", "Diaz", "Woods", "Cruz", "Webb", "Rice"}

# A selection of emails that we can use when creating the full addresses.
set tlds to {"google.com", "yahoo.com", "hotmail.com", "bing.com", "me.com", "name.com", "aol.com", "msn.com", "hp.com", "dhs.gov", "us.mil", "sbcglobal.net", "comcast.com", "att.com", "amazon.com", "ca.us.gov"}

# A small selection of valid US zip codes.
set zips to {"96003", "96002", "96001", "44444", "95926", "95925", "96073", "01001", "72640", "27892", "91732", "66083", "94203", "94248", "94232", "95867", "95864", "90001", "90009", "90014", "90028", "90052", "91331", "90084", "97201", "97208", "97229"}

# A small selection of HTML recognized colors.
set valid_colors to {"AliceBlue", "AntiqueWhite", "Aqua", "AquaMarine", "Azure", "Beige", "Bisque", "Blue", "BlueViolet", "Brown", "Chocolate", "Coral", "CornSilk", "Crimson", "Cyan", "DarkBlue", "DarkKhaki", "DarkOrchid", "DarkSeaGreen", "DarkSlateGray", "PaleGreen", "Plum", "Red", "Yellow", "Salmon", "SeaGreen", "Tan", "White", "Wheat", "YellowGreen", "Purple", "Orange", "Tomato", "Thistle", "Snow", "SaddleBrown", "RoyalBlue", "OrangeRed", "Moccasin", "MistyRose", "Linen", "Lime", "LightYellow"}

# Getting the URL to the form page.
display dialog "Enter the URL to the Form page" default answer ""
set target_url to text returned of result

# Getting the number of times to loop.
display dialog "Number of entries" default answer ""
set rotate_number to text returned of result

delay 2

tell application "Google Chrome" to activate
delay 1
tell application "System Events"
	keystroke "l" using command down
	delay 1
	keystroke target_url
	keystroke return
	repeat rotate_number times
		delay (random number from 1 to 5) --Request the page at random intervals.
		keystroke tab
		delay 1
		set random_firstname to some item of first_names
		keystroke random_firstname
		delay 0
		keystroke tab
		delay 0
		set random_lastname to some item of last_names
		keystroke random_lastname
		delay 0
		keystroke tab
		delay 0
		set tld to some item of tlds
		set email to random_firstname & random_lastname & "@" & tld
		keystroke email
		delay 0
		keystroke tab
		delay 0
		set zip to some item of zips
		keystroke zip
		delay 0
		keystroke tab
		delay 0
		set fav_color to some item of valid_colors
		keystroke fav_color
		delay 0
		keystroke tab
		delay 0
		keystroke return
		delay 2
		key code 123 using command down
	end repeat
end tell
