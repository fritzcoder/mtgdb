MTG Database load scripts
use mtg
Pre: db.card_sets_remove()

1. load.rb

2. update_search_name.rb

3. update_card_format.rb

4. update_cards_rulings.rb

5. get_hires_image.rb


Prerequisites:
	The deckbuilder database: http://www.deckedbuilder.com/
	You will need to purchase the mac version. You can find that database
	~/Library/Containers/com.deckedbuilder.deckedbuilder/Data/Library/
	com.deckedbuilder.deckedbuilder/dbdir{version number}/cards.sqlite. 
	
	This cannot be provided as it is not open source. I hope to remove this
	dependency soon. 
	
	Copy cards.sqlite into the same directory as the ruby scripts. 

	You need to install mongoDB
	
	Make sure you have ruby installed. Version 2+
	When you run the ruby script it will throw errors for the gems you need
	to install.
	
	An internet connection is needed to scrape from the gatherer. 
	
Set information is hardcoded into the script, the information is taken 
from wikipedia and the gatherer. This should be dumped into a file or 
database. 
	
The big goal is have data contributors to load the database instead of
relying on the deckbuilder database. An app will have to be developed to allow
contributors to enter data. This will be an open source effort both 
on the data and the application. This will live at www.mtgdb.info


