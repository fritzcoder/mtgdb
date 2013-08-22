require 'rubygems'
require 'mongo'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

class CardSet
	include MongoMapper::Document
	key :_id, String
	key :name, String
	key :block, String
	key :released_at, Time
	key :common, Integer
	key :uncommon, Integer
	key :rare, Integer
	key :mythic_rare, Integer
	key :basic_land, Integer
	key :other, Integer
	key :description, String
	key :wikipedia, String
end

set1 = CardSet.new
set1.name = "Dragon's Maze"
set1._id = "DGM"
set1.description = "Dragon's Maze is a Magic: The Gathering expansion set that was released on May 3, 2013. It is the third set of the Return to Ravnica block and contains 156 cards. All ten guilds of Ravnica will be included in the set. As in the original Ravnica block, Dragon's Maze focuses on multi-color cards. The set also marks the culmination of the Izzet League's research into the depths of Ravnica, the eponymous Dragon's Maze -- A path that treads all 10 guild gates in order to find and activate an energy source of immense power which is enough to subjugate and control all of the guilds. The Izzet propose a challenge in which each guild selects a champion in order to navigate and conquer the maze and subsequently the other guilds. Each Champion will have to traverse the maze, and they will have to deal with other guilds' attempts to halt their advance."
set1.wikipedia = "http://en.wikipedia.org/wiki/Dragon%27s_Maze"
set1.common = 70
set1.uncommon = 40
set1.rare = 35
set1.mythic_rare = 11
set1.basic_land = 0
set1.released_at = "May 3, 2013" 
id = set1.save


set2 = CardSet.new
set2.name = "Gatecrash"
set2._id = "GTC"
set2.description = "Gatecrash is a Magic: The Gathering expansion set released February 1, 2013. It is the second set of the Return to Ravnica block. The tagline for the set is 'Fight For Your Guild' and it contains 249 cards (101 commons, 80 uncommons, 53 rares, 15 mythic rares). Gatecrash focuses on five of the returning guilds; the Boros Legion, House Dimir, The Orzhov Syndicate, The Gruul Clans, and The Simic Combine. As in the original Ravnica block, Gatecrash focuses on multicolor cards. The storyline told deals with the rise of another faction that does not ally with any of the Guilds. This group is referred to as the 'Gateless'. The Gateless was referred to in the first set in certain cards as well. Another storyline has the tension between the guilds rise, and their attempts to thwart one another."
set2.wikipedia = "http://en.wikipedia.org/wiki/Gatecrash"
set2.common = 101
set2.uncommon = 80
set2.rare = 53
set2.mythic_rare = 15
set2.basic_land = 0
set2.released_at = "February 1, 2013" 
id = set2.save

set3 = CardSet.new
set3.name = "Return to Ravnica"
set3._id = "RTR"
set3.description = "Return to Ravnica is a Magic: The Gathering expansion that was released on October 5, 2012. It is the first set of the Return to Ravnica block, and it contains 274 cards. Return to Ravnica focuses on five of the returning guilds; the Izzet League, Cult of Rakdos, Golgari Swarm, Azorius Senate, and Selesnya Conclave. As in the original Ravnica block, Return to Ravnica focuses on multicolor cards. The story told vaguely in the cards deals with the Izzet League searching for something deep within Ravnica's bowels and the other guilds responding to their mysterious actions."
set3.wikipedia = "http://en.wikipedia.org/wiki/Return_to_Ravnica"
set3.common = 101
set3.uncommon = 80
set3.rare = 53
set3.mythic_rare = 15
set3.basic_land = 25
set3.released_at = "October 5, 2012" 
id = set3.save

set4 = CardSet.new
set4.name = "Planechase 2012 Edition"
set4._id = "PC2"
set4.block = "Planechase"
set4.description = 'The Planechase (2012 Edition) release consists of four 
different game packs: "Chaos Reigns," "Night of the Ninja," 
"Primordial Hunger," and "Savage Auras." Each game pack contains a 60-card 
traditional Magic deck, a 10-card planar deck consisting of 8 plane cards and 
2 phenomenon cards, and a six-sided planar die.'
set4.wikipedia = "http://en.wikipedia.org/wiki/Planechase#2012_release"
set4.common = 280
set4.uncommon = 0
set4.rare = 0
set4.mythic_rare = 0
set4.basic_land = 0
set4.released_at = "June 1, 2012" 
id = set4.save

set5 = CardSet.new
set5.name = "Avacyn Restored"
set5._id = "AVR"
set5.description = "Avacyn Restored is a Magic: The Gathering expansion set that was released May 4, 2012.[1] It is the third set of the Innistrad block. The tagline for the set is 'Ignite the Dawn'.
An animated trailer for Avacyn Restored has been released in English and Japanese."
set5.wikipedia = "http://en.wikipedia.org/wiki/Avacyn_Restored"
set5.common = 101
set5.uncommon = 60
set5.rare = 53
set5.mythic_rare = 15
set5.basic_land = 15
set5.released_at = "May 4, 2012" 
id = set5.save

set6 = CardSet.new
set6.name = "Dark Ascension"
set6._id = "DKA"
set6.description = "Dark Ascension is a Magic: The Gathering expansion set released February 3, 2012. It is the second set of the Innistrad block. The tagline for the set is 'Command the Night'. It was first revealed at the 2011 Comic-Con in San Diego, California."
set6.wikipedia = "http://en.wikipedia.org/wiki/Dark_Ascension"
set6.common = 64
set6.uncommon = 44
set6.rare = 38
set6.mythic_rare = 12
set6.basic_land = 0
set6.released_at = "February 3, 2012" 
id = set6.save

set7 = CardSet.new
set7.name = "Innistrad"
set7._id = "ISD"
set7.description = "nnistrad is a Magic: The Gathering expansion set released September 30, 2011.[1] It is the first set of the Innistrad block. Innistrad is a 'top-down' designed set based around Gothic horror. The set's mechanics and effects are mainly based around graveyard themes, with a minor focus on tribal themes. The tagline for the set is 'Horror Lurks Within'. It has 264 cards."
set7.wikipedia = "http://en.wikipedia.org/wiki/Innistrad"
set7.common = 107
set7.uncommon = 67
set7.rare = 59
set7.mythic_rare = 16
set7.basic_land = 15
set7.released_at = "September 30, 2011" 
id = set7.save

set8 = CardSet.new
set8.name = "Commander"
set8._id = "CMD"
set8._id = "Commander"
set8.description = 'The _Magic: The Gathering -- Commander_ release consists 
of five different decks: "Heavenly Inferno," "Mirror Mastery," "Counterpunch," 
"Political Puppets," and "Devour for Power." Each deck includes a 100-card 
singleton deck and three oversized foil commander cards.'
set8.wikipedia = "http://en.wikipedia.org/wiki/Commander_(Magic:_The_Gathering)"
set8.common = 500
set8.uncommon = 0
set8.rare = 0
set8.mythic_rare = 0
set8.basic_land = 0
set8.released_at = "June 17, 2011" 
id = set8.save

set8b = CardSet.new
set8b.name = "Commander's Arsenal"
set8b._id = "CM1"
set8b._id = "Commander"
set8b.description = "Commander's Arsenal is a set 18 premium foil cards, 10 oversized premium foil cards, and a couple of accessories. The set was release on November 2, 2012. Each card was a reprint of a card often found in Commander or EDH decks."
set8b.wikipedia = "http://en.wikipedia.org/wiki/Commander%27s_Arsenal#Commander.27s_Arsenal"
set8b.common = 28
set8b.uncommon = 0
set8b.rare = 0
set8b.mythic_rare = 0
set8b.basic_land = 0
set8b.released_at = "November 2, 2012" 
id = set8b.save

set8c = CardSet.new
set8c.name = "Commander (2013 Edition)"
set8c._id = "C13"
set8c._id = "Commander"
set8c.description = "Commander is a series of five 100-card, three color Magic: the Gathering decks, meant as a supplement to the variant format initially known as 'Elder Dragon Highlander (EDH)'. Each deck is based around a legendary creature, called a 'Commander' or 'General'. No card other than basic lands appear more than once in each deck, and each deck contains three foil oversized legendary creature cards. This set is notable in that it is the first set printed outside of the normal booster pack expansions to have functionally new cards. There are 51 new cards, made specifically for multi-player games, featured in Commander."
set8c.wikipedia = "http://en.wikipedia.org/wiki/Commander_(Magic:_The_Gathering)"
set8c.common = 28
set8c.uncommon = 0
set8c.rare = 0
set8c.mythic_rare = 0
set8c.basic_land = 0
set8c.released_at = "November 1, 2013" 
id = set8c.save

set9 = CardSet.new
set9.name = "New Phyrexia"
set9._id = "NPH"
set9.description = 'New Phyrexia is a Magic: The Gathering expansion set that was released May 13, 2011. It is the third set of the Scars of Mirrodin block, which returns to the plane of Mirrodin, previously visited in the Mirrodin block that concluded in 2004. The release announcement indicated that the set, codenamed "Action", would be named either Mirrodin Pure or New Phyrexia.
The tagline for the set is "The Grand Compleation is Achieved," and the expansion symbol matches the Phyrexian watermarks found on non-land or planeswalker cards from Scars of Mirrodin and Mirrodin Besieged. Prerelease events were held on May 7 and 8. It contains 175 cards.'
set9.wikipedia = "http://en.wikipedia.org/wiki/New_Phyrexia"
set9.common = 60
set9.uncommon = 60
set9.rare = 35
set9.mythic_rare = 10
set9.basic_land = 10
set9.released_at = "May 13, 2011" 
id = set9.save

set10 = CardSet.new
set10.name = "Mirrodin Besieged"
set10._id = "MBS"
set10.description = 'Mirrodin Besieged is a Magic: The Gathering expansion set released February 4, 2011. It is the second set of the Scars of Mirrodin block. This block marked the return to the plane of Mirrodin, that was last visited in the Mirrodin block that concluded in 2004.[1] The tagline for the set was "Steel Yourself for War."[2] The Mirrodin Besieged Prereleases were held on January 29–30, 2011. They were different from other prereleases in that there were special Mirrodin Besieged boosters that were only available for the prerelease. These boosters were composed exclusively of cards from either the Mirran or the Phyrexian faction. A player had to choose one of these sides upon entering the prerelease and received the corresponding boosters.'
set10.wikipedia = "http://en.wikipedia.org/wiki/Mirrodin_Besieged"
set10.common = 60
set10.uncommon = 40
set10.rare = 35
set10.mythic_rare = 10
set10.basic_land = 10
set10.released_at = "February 4, 2011" 
id = set10.save

set11 = CardSet.new
set11.name = "Scars of Mirrodin"
set11._id = "SOM"
set11.description = 'Scars of Mirrodin is a Magic: The Gathering expansion that was released on October 1, 2010. It is the first set of the Scars of Mirrodin block. This block marked the return to the plane of Mirrodin. This plane was last visited in the Mirrodin block that concluded in 2004.[2] The interim tagline for the set was "The Corrosion Begins October 1, 2010." The plans for this set were first made public by mananation.com when it was discovered that "Scars of Mirrodin", as well as "Mirrodin Pure" and "New Phyrexia" had been registered as trademarks with the US Patent and Trademark Office by Wizards of the Coast.[3]
As with the original Mirrodin block, artifacts make up the overarching theme of Scars of Mirrodin; Nearly half of all cards in the set are artifacts. In his May 24 column, Mark Rosewater confirmed that the "Infect" game mechanic in Scars of Mirrodin would bring poison counters back to Magic.'
set11.wikipedia = "http://en.wikipedia.org/wiki/Scars_of_Mirrodin"
set11.common = 101
set11.uncommon = 60
set11.rare = 53
set11.mythic_rare = 15
set11.basic_land = 20
set11.released_at = "October 1, 2010" 
id = set11.save

set12 = CardSet.new
set12.name = "Archenemy"
set12._id = "ARC"
set12.block = ""
set12.description = 'Archenemy is a variant of Magic: The Gathering with an emphasis on one vs. many multiplayer games. The set utilizes new oversized Scheme cards. Four game packs were released on June 18th, 2010: Assemble the Doomsday Machine, Bring About the Undead Apocalypse, Scorch the World with Dragonfire, Trample Civilization Underfoot. The cards within each preconstructed deck have all been reprinted from various Magic sets, with the exception of one card per deck, that is a new card from Magic 2011. All of the cards are black bordered and tournament legal in their original formats.'
set12.wikipedia = "http://en.wikipedia.org/wiki/Archenemy_(Magic:_The_Gathering)"
set12.common = 160
set12.uncommon = 0
set12.rare = 0
set12.mythic_rare = 0
set12.basic_land = 0
set12.released_at = "June 18, 2010" 
id = set12.save

set13 = CardSet.new
set13.name = "Rise of the Eldrazi"
set13._id = "ROE"
set13.description = 'Rise of the Eldrazi is a Magic: The Gathering expansion released on April 23, 2010. It is the third set of the Zendikar block. It is a large set consisting of 228 cards plus 20 basic lands. Its tagline is "And Carnage Shall Follow." The set, while part of the Zendikar block creatively and for the sake of constructed tournament rules, is unique mechanically and is designed to be drafted on its own. Drafts in the Zendikar block are either ZEN-ZEN-WWK or ROE-ROE-ROE.'
set13.wikipedia = "http://en.wikipedia.org/wiki/Rise_of_the_Eldrazi"
set13.common = 100
set13.uncommon = 60
set13.rare = 53
set13.mythic_rare = 15
set13.basic_land = 20
set13.released_at = "April 23, 2010" 
id = set13.save


set14 = CardSet.new
set14.name = "Worldwake"
set14._id = "WWK"
set14.description = 'The _Worldwake_ set contains 145 cards (60 common, 
40 uncommon, 35 rare, 10 mythic rare).'
set14.wikipedia = "Worldwake is a Magic: The Gathering expansion set that was released February 5, 2010. It is the second set of the Zendikar block, so many of the themes introduced in Zendikar are expanded upon in Worldwake. It consists of 145 cards.[1] Its tagline is 'A World Enraged.' The expansion symbol for the set is an activated hedron, ancient floating structures prevalent in the world of Zendikar."
set14.wikipedia = "http://en.wikipedia.org/wiki/Worldwake"
set14.common = 60
set14.uncommon = 40
set14.rare = 35
set14.mythic_rare = 10
set14.basic_land = 0
set14.released_at = "February 5, 2010" 
id = set14.save

set15 = CardSet.new
set15.name = "Zendikar"
set15._id = "ZEN"
set15.description = 'The _Zendikar_ set features basic land cards that have 
been printed without a text box. These lands appear in booster packs and in 
the fat pack. Full-art basic lands function the same way as any other basic 
lands, since each land with a basic land type intrinsically has the mana 
ability associated with that type. (_Zendikar_ intro packs contain basic 
land cards with normal card frames. The collector numbers of those cards 
contain the letter "a.")'
set15.wikipedia = "http://en.wikipedia.org/wiki/Zendikar"
set15.common = 101
set15.uncommon = 60
set15.rare = 53
set15.mythic_rare = 15
set15.basic_land = 20
set15.released_at = "October 2, 2009" 
id = set15.save

set16 = CardSet.new
set16.name = "Planechase"
set16._id = "HOP"
set16.block = "Planechase"
set16.description = 'Planechase is a variant of Magic: The Gathering with an emphasis on multi-player games. The set utilizes new oversized Plane cards, cards that are based on various locations (Planes) within the Magic multiverse, to modify the rules of gameplay.'
set16.wikipedia = "http://en.wikipedia.org/wiki/Planechase"
set16.common = 280
set16.uncommon = 0
set16.rare = 0
set16.mythic_rare = 0
set16.basic_land = 0
set16.released_at = "September 4, 2009" 
id = set16.save

set17 = CardSet.new
set17.name = "Masters Edition III"
set17._id = "ME3"
set17.block = "Master Editions"
set17.description = "Masters Edition III consists mainly of cards from The Dark, Legends, and Portal Three Kingdoms. While The Dark and Legends reflect the era Masters Edition III cards should be mostly from, the Portal Three Kingdoms cards are arguably the most distinctive part of ME3 even though that set was released five years after Legends and The Dark. This is due to the fact that one of the most widely used creature abilities in Magic, 'Flying', is almost completely replaced by its Portal Three Kingdoms counterpart, 'Horsemanship'. The other mechanics employed in Masters Edition III are multicolored cards and Legendary Creatures. Masters Edition III has a minor tribal theme of Faeries, Kobolds, and Minotaurs are the tribes used in Masters Edition III. Masters Edition III also reprints six World Enchantments."
set17.wikipedia = "http://en.wikipedia.org/wiki/Masters_Edition_III#Masters_Edition_III"
set17.common = 75
set17.uncommon = 70
set17.rare = 70
set17.mythic_rare = 0
set17.basic_land = 15
set17.released_at = "September 9, 2009" 
id = set17.save

set18 = CardSet.new
set18.name = "Alara Reborn"
set18._id = "ARB"
set18.description = "Alara Reborn (codenamed Scissors) is a Magic: The Gathering expansion set which was released on April 30, 2009. It includes 145 cards. To take advantage of International Workers' Day/Labor Day in Europe, it was released on a Thursday instead of the traditional Friday. The pre-release date was April 24, 2009."
set18.wikipedia = "http://en.wikipedia.org/wiki/Alara_Reborn"
set18.common = 60
set18.uncommon = 40
set18.rare = 35
set18.mythic_rare = 10
set18.basic_land = 0
set18.released_at = "April 30, 2009" 
id = set18.save

set19 = CardSet.new
set19.name = "Conflux"
set19._id = "CON"
set19.description = 'Conflux is a Magic: The Gathering expansion set, released on February 6, 2009. It is the 48th limited-edition expansion set for Magic and includes 145 cards.'
set19.wikipedia = "http://en.wikipedia.org/wiki/Conflux"
set19.common = 60
set19.uncommon = 40
set19.rare = 35
set19.mythic_rare = 10
set19.basic_land = 0
set19.released_at = "February 6, 2009" 
id = set19.save

set20 = CardSet.new
set20.name = "Shards of Alara"
set20._id = "ALA"
set20.description = 'Shards of Alara is an expansion set from the trading card game Magic: The Gathering. It is the 47th limited-edition expansion set for Magic and was released on October 3, 2008.[3] On Magic Online Shards was released on October 20, 2008.'
set20.wikipedia = "http://en.wikipedia.org/wiki/Shards_of_Alara"
set20.common = 101
set20.uncommon = 60
set20.rare = 53
set20.mythic_rare = 15
set20.basic_land = 20
set20.released_at = "October 3, 2008" 
id = set20.save

set21 = CardSet.new
set21.name = "Masters Edition II"
set21._id = "ME2"
set21.block = "Masters Editions"
set21.description = "The _Masters Edition II_ set is a collection of 
_Magic_(TM) cards that were originally printed before the _Mirage_(TM) set was
released. It's a 245-card, black-bordered set featuring 80 rares, 
80 uncommons, 80 commons, and 5 basic lands. The _Masters Edition II_ set is 
nonredeemable: Online cards from the _Masters Edition II_ set can't be 
exchanged for physical cards"
set21.wikipedia = "http://en.wikipedia.org/wiki/Masters_Edition_II#Masters_Edition_II"
set21.common = 80
set21.uncommon = 80
set21.rare = 80
set21.mythic_rare = 0
set21.basic_land = 5
set21.released_at = "September 26, 2008" 
id = set21.save

set22 = CardSet.new
set22.name = "Eventide"
set22._id = "EVE"
set22.description = 'Eventide is an expansion set, codenamed "Doughnut", from the trading card game Magic: The Gathering. It was released on July 25, 2008. The pre-release events for this set were held on July 12–13, 2008.'
set22.wikipedia = "http://en.wikipedia.org/wiki/Eventide"
set22.common = 60
set22.uncommon = 60
set22.rare = 60
set22.mythic_rare = 0
set22.basic_land = 0
set22.released_at = "July 25, 2008" 
id = set22.save

set23 = CardSet.new
set23.name = "Shadowmoor"
set23._id = "SHM"
set23.description = 'The Shadowmoor is an expansion set, codenamed "Jelly", from the trading card game Magic: The Gathering. It was released on May 2, 2008. The pre-release events for this set were held on April 19–20, 2008.'
set23.wikipedia = "http://en.wikipedia.org/wiki/Shadowmoor"
set23.common = 121
set23.uncommon = 80
set23.rare = 80
set23.mythic_rare = 0
set23.basic_land = 20
set23.released_at = "May 2, 2008" 
id = set23.save

set24 = CardSet.new
set24.name = "Morningtide"
set24._id = "MOR"
set24.description = 'Morningtide is an expansion set, codenamed "Butter", for the trading card game Magic: The Gathering. It is the 44th expert level set, and it was released on February 1, 2008. The pre-release events for this set were held on January 19 and January 20, 2008.'
set24.wikipedia = "http://en.wikipedia.org/wiki/Morningtide"
set24.common = 60
set24.uncommon = 40
set24.rare = 50
set24.mythic_rare = 0
set24.basic_land = 0
set24.released_at = "February 1, 2008" 
id = set24.save

set25 = CardSet.new
set25.name = "Lorwyn"
set25._id = "LWR"
set25.description = 'Lorwyn is the 66th Magic: The Gathering set, 43rd expert level set, and the first set in the Lorwyn Block, released in October 2007. It is codenamed "Peanut". The pre-release events for this set were held on September 29–30, 2007'
set25.wikipedia = "http://en.wikipedia.org/wiki/Lorwyn"
set25.common = 121
set25.uncommon = 80
set25.rare = 80
set25.mythic_rare = 0
set25.basic_land = 20
set25.released_at = "October 12, 2007" 
id = set25.save

set26 = CardSet.new
set26.name = "Masters Edition"
set26._id = "MED"
set26.block = "Masters Editions"
set26.description = "Masters Edition is a series of Magic: The Gathering expansions that have been released exclusive for Magic: The Gathering Online. Each set consists of reprints from early Magic sets that had yet to be released to Magic Online. "
set26.wikipedia = "http://en.wikipedia.org/wiki/Masters_Edition#Master.27s_Edition_I"
set26.common = 60
set26.uncommon = 60
set26.rare = 60
set26.mythic_rare = 0
set26.basic_land = 20
set26.released_at = "September 10, 2007" 
id = set26.save

set27 = CardSet.new
set27.name = "Future Sight"
set27._id = "FUT"
set27.description = 'Future Sight is an expansion set, codenamed "Pop", for the trading card game Magic: The Gathering. The set was released worldwide on May 4, 2007. The pre-release events for this set were held on April 21 and April 22, 2007.'
set27.wikipedia = "http://en.wikipedia.org/wiki/Future_Sight"
set27.common = 60
set27.uncommon = 60
set27.rare = 60
set27.mythic_rare = 0
set27.basic_land = 0
set27.released_at = "May 4, 2007" 
id = set27.save

set28 = CardSet.new
set28.name = "Planar Chaos"
set28._id = "PLC"
set28.description = 'Planar Chaos is an expansion set, codenamed "Crackle," from the trading card game Magic: The Gathering. The set was released on February 2, 2007. The pre-release events took place on January 20 and 21, 2007. It is the second set in the Time Spiral block. The symbol for Planar Chaos is a Möbius strip'
set28.wikipedia = "http://en.wikipedia.org/wiki/Planar_Chaos"
set28.common = 60
set28.uncommon = 55
set28.rare = 50
set28.mythic_rare = 0
set28.basic_land = 0
set28.released_at = "February 2, 2007" 
id = set28.save

set29 = CardSet.new
set29.name = "Time Spiral"
set29._id = "TSP"
set29.description = 'Time Spiral is a Magic: The Gathering expansion set, released October 6, 2006. The set is laden with references to previous Magic: the Gathering sets. The references are reflected in the card design, which incorporates special rules from older sets, and in the "Timeshifted" cards, which are cards reprinted from older sets using the older card design (abandoned three years previous with the 2003 release of Core Set 8th Edition.) The Time Spiral expansion symbol is an hourglass.
Time Spiral is the first set in the block of the same name. (A "block" consists of three theme-related expansion sets released over a period of a year.) It is followed by Planar Chaos, which deals with alternate timelines and includes many cards reprinted from previous sets but changed in some fundamental way, and Future Sight, which is forward-looking, both in that it includes cards from settings not yet explored in previous sets as well as including game mechanics that did not exist until it came out.
As with all Magic: the Gathering sets in this period, Time Spiral is accompanied by a tie-in novel of the same name. Time Spiral, written by Scott McGough, focuses on the efforts of Teferi to deal with the consequences of phasing out Shiv and Zhalfir during the Phyrexian Invasion. This novel was published in September 2006.
Time Spiral is typical among the first sets of a Magic: the Gathering block in that the cards are sold in four different forms. Four different theme decks, 60 card decks with themed, fixed composition were released, each featuring a different aspect of the set. Randomized packs, both as the typical 15-card booster packs and the larger 75-card tournament packs'
set29.wikipedia = "http://en.wikipedia.org/wiki/Time_Spiral"
set29.common = 121
set29.uncommon = 80
set29.rare = 80
set29.mythic_rare = 0
set29.basic_land = 20
set29.released_at = "October 6, 2006" 
id = set29.save

set30 = CardSet.new
set30.name = "Coldsnap"
set30._id = "CSP"
set30.description = 'Coldsnap is the thirty-ninth Magic expansion and the third set in the Ice Age block, taking the place of Homelands.'
set30.wikipedia = "http://en.wikipedia.org/wiki/Coldsnap_(Magic:_The_Gathering)"
set30.common = 60
set30.uncommon = 55
set30.rare = 40
set30.mythic_rare = 0
set30.basic_land = 0
set30.released_at = "July 21, 2006" 
id = set30.save

set31 = CardSet.new
set31.name = "Dissension"
set31._id = "DIS"
set31.description = 'Dissension is the 60th Magic: The Gathering set, 38th expert level set, and the third and final set in the Ravnica Block, released on May 5, 2006.'
set31.wikipedia = "http://en.wikipedia.org/wiki/Dissension_(Magic:_The_Gathering)"
set31.common = 60
set31.uncommon = 60
set31.rare = 60
set31.mythic_rare = 0
set31.basic_land = 0
set31.released_at = "May 5, 2006" 
id = set31.save

set32 = CardSet.new
set32.name = "Guildpact"
set32._id = "GPT"
set32.description = 'Guildpact is a Magic: The Gathering set, second in the Ravnica Block. Guildpact was released on February 3, 2006'
set32.wikipedia = "http://en.wikipedia.org/wiki/Guildpact"
set32.common = 55
set32.uncommon = 55
set32.rare = 55
set32.mythic_rare = 0
set32.basic_land = 0
set32.released_at = "February 3, 2006" 
id = set32.save

set33 = CardSet.new
set33.name = "Ravnica: City of Guilds"
set33._id = "RAV"
set33.description = "Ravnica: City of Guilds is a Magic: The Gathering set and is the first set in the Ravnica Block. Ravnica was released on October 7, 2005 (prerelease events were held worldwide on September 24 and 25, 2005). Its expansion symbol is a silhouette of a city with a prominent clock tower.
Following in the tradition of recent Magic blocks, Ravnica takes place in a plane of the multiverse that was previously unexplored in the game's backstory. The world of Ravnica is an ecumenopolis, a vast city that covers the entire surface of its planet, and is home to a diverse assortment of sentient races. Much power in Ravnica is held by the ten 'guilds', political factions that each represent a combination of two of Magic's five colors."
set33.wikipedia = "http://en.wikipedia.org/wiki/Ravnica:_City_of_Guilds"
set33.common = 110
set33.uncommon = 88
set33.rare = 88
set33.mythic_rare = 0
set33.basic_land = 20
set33.released_at = "October 7, 2005" 
id = set33.save

set34 = CardSet.new
set34.name = "Saviors of Kamigawa"
set34._id = "SOK"
set34.description = "Saviors of Kamigawa (also Saviors or SoK) is a Magic: The Gathering set, third and last in the Kamigawa block. Saviors of Kamigawa was released on June 3, 2005 (prerelease on May 21, 2005). Its expansion symbol is a Japanese lantern."
set34.wikipedia = "http://en.wikipedia.org/wiki/Saviors_of_Kamigawa"
set34.common = 55
set34.uncommon = 55
set34.rare = 55
set34.mythic_rare = 0
set34.basic_land = 0
set34.released_at = "June 3, 2005" 
id = set34.save

set35 = CardSet.new
set35.name = "Betrayers of Kamigawa"
set35._id = "BOK"
set35.description = "Betrayers of Kamigawa (Betrayers or BoK) is the name of 
the Magic: The Gathering expansion set which came out in February 2005, and 
is the second set in the Kamigawa block. It contains 165 cards. The set's 
story is inspired by Japanese medieval myths and revolves around the battle 
between spirits (kami) and living beings. The set's expansion symbol is a 
shuriken, or ninja throwing star."
set35.wikipedia = "http://en.wikipedia.org/wiki/Betrayers_of_Kamigawa"
set35.common = 55
set35.uncommon = 55
set35.rare = 55
set35.mythic_rare = 0
set35.basic_land = 0
set35.released_at = "February 4, 2005" 
id = set35.save

set36 = CardSet.new
set36.name = "Champions of Kamigawa"
set36._id = "CHK"
set36.description = "Champions of Kamigawa (Champions or CHK) is the name of 
the Magic: The Gathering expansion set released October 1, 2004. The first set
of the Kamigawa block, it set the stage for the block's story, which was 
inspired by Japanese myths and revolves around the battle between spirits 
(kami) and living beings.
The set's expansion symbol is a torii, the entrance to the Shinto temple. This
is especially important, as Kamigawa's original idea was summed up as 'Shinto 
gone horribly wrong': Kami warring against their human worshippers."
set36.wikipedia = "http://en.wikipedia.org/wiki/Champions_of_Kamigawa"
set36.common = 110
set36.uncommon = 88
set36.rare = 88
set36.mythic_rare = 0
set36.basic_land = 20
set36.released_at = "October 1, 2004" 
id = set36.save

set37 = CardSet.new
set37.name = "Fifth Dawn"
set37._id = "5DN"
set37.description = "Fifth Dawn is a Magic: The Gathering expansion set which was released in May 2004. It is the third and final set of the Mirrodin block. There are 165 cards overall, and like the rest of Mirrodin, an unusually large number of them are artifacts. However, Fifth Dawn adds a new twist to artifact theme of Mirrodin and Darksteel: it encourages using colored mana for playing artifact spells, via the Sunburst mechanic (see below). Fifth Dawn 's expansion symbol is a small image of Helm of Kaldra, a card from this set.
Fifth Dawn introduced an enhanced design for artifact cards, which uses a darker inner border to help players distinguish artifacts from white cards. Fifth Dawn theme decks contained a few reprints from Mirrodin and Darksteel with the improved card face.
The name Fifth Dawn is derived from the plane's five suns. Each sun is associated with a color of mana and the green sun, which has long been absent, returns to the sky as part of this set's storyline."
set37.wikipedia = "http://en.wikipedia.org/wiki/Fifth_Dawn_(Magic:_The_Gathering)"
set37.common = 55
set37.uncommon = 55
set37.rare = 55
set37.mythic_rare = 0
set37.basic_land = 0
set37.released_at = "June 4, 2004" 
id = set37.save

set38 = CardSet.new
set38.name = "Darksteel"
set38._id = "DST"
set38.description = "Darksteel is an expansion set for the game Magic: The Gathering, the second in the Mirrodin block of sets that also features Mirrodin and Fifth Dawn. It was released in February 2004, containing 165 cards. Darksteel continued the themes established in Mirrodin: Artifact cards, equipment and the mechanics that debuted. The expansion symbol for the set is the miniature version of the stylized Shield of Kaldra.
Darksteel featured the powerful single card drawing engine masked as the infamous equipment Skullclamp. When it was eventually banned during block constructed a few months after Darksteel's release, Skullclamp was the first to have been banned in block constructed since Mercadian Masques' Rishadan Port"
set38.wikipedia = "http://en.wikipedia.org/wiki/Darksteel_(Magic:_The_Gathering)"
set38.common = 55
set38.uncommon = 55
set38.rare = 55
set38.mythic_rare = 0
set38.basic_land = 0
set38.released_at = "February 6, 2004" 
id = set38.save

set39 = CardSet.new
set39.name = "Mirrodin"
set39._id = "MRD"
set39.description = "Mirrodin was the 50th Magic: The Gathering set, the 30th expert level set, and the first set in the Mirrodin Block, released in October 2003. It is a 306-card expansion set. It is also the name of the block containing the Mirrodin, Darksteel and Fifth Dawn expansion sets. This expansion, as well as the rest of the block, is centered around artifacts and is only the second set to do so (from a card frequency point of view) since Antiquities. The percentage of artifact cards is much higher than in any preceding set. Mirrodin 's expansion symbol is a small image of Sword of Kaldra, a card from this set."
set39.wikipedia = "http://en.wikipedia.org/wiki/Mirrodin_(Magic:_The_Gathering)"
set39.common = 110
set39.uncommon = 88
set39.rare = 88
set39.mythic_rare = 0
set39.basic_land = 20
set39.released_at = "October 3, 2003" 
id = set39.save

set40 = CardSet.new
set40.name = "Legions"
set40._id = "LGN"
set40.description = 'Legions is the second set in the Onslaught block of cards of Magic: The Gathering, along with the expansions Onslaught and Scourge. It contained 145 cards which continued on the themes started in Onslaught. Its expansion symbol is two spears behind a shield.'
set40.wikipedia = "http://en.wikipedia.org/wiki/Legions_(Magic:_The_Gathering)"
set40.common = 55
set40.uncommon = 45
set40.rare = 45
set40.mythic_rare = 0
set40.basic_land = 0
set40.released_at = "February 3, 2003"
id = set40.save

set40b = CardSet.new
set40b.name = "Scourge"
set40b._id = "SCG"
set40b.description = "Scourge is a Magic: The Gathering expansion set. It is the third set of the Onslaught block and the last set printed before the 'modern' card face style was introduced. There are 143 cards overall. The expansion symbol is a dragon's skull."
set40b.wikipedia = "http://en.wikipedia.org/wiki/Scourge_(Magic:_The_Gathering)"
set40b.common = 55
set40b.uncommon = 44
set40b.rare = 44
set40b.mythic_rare = 0
set40b.basic_land = 0
set40b.released_at = "May 26, 2003"
id = set40b.save

set41 = CardSet.new
set41.name = "Onslaught"
set41._id = "ONS"
set41.description = "Onslaught is the 27th Magic: The Gathering expert-level expansion set. It was released in October 2002. The set's main theme is creature types (for example, Clerics and Goblins), and much of the game play concerns interactions between these 'tribes'. The story continues the saga of the Mirari from the previous block of expansion sets. The expansion symbol is an artist's rendition of a 'morphed' creature."
set41.wikipedia = "http://en.wikipedia.org/wiki/Onslaught_(Magic:_The_Gathering)"
set41.common = 110
set41.uncommon = 110
set41.rare = 110
set41.mythic_rare = 0
set41.basic_land = 20
set41.released_at = "October 7, 2002" 
id = set41.save

set42 = CardSet.new
set42.name = "Judgment"
set42._id = "JUD"
set42.description = "Judgment is the third set in the Odyssey Block for the collectible card game Magic: The Gathering.
This is the second expansion set made that did not have an equal number cards from each color. The first expansion with such an imbalance was its predecessor, the Torment expansion set, which was skewed towards the color black. The Judgment expansion set was meant to balance this, and skews towards green and white, black's enemy colors. The expansion symbol for Judgment was a scale.
The set contains 33 Green cards, 33 White cards, 27 Red cards, 27 Blue cards and 16 Black cards. All multicolored cards in the set are both green and white."
set42.wikipedia = "http://en.wikipedia.org/wiki/Judgment_(Magic:_The_Gathering)"
set42.common = 55
set42.uncommon = 44
set42.rare = 44
set42.mythic_rare = 0
set42.basic_land = 0
set42.released_at = "May 27, 2002" 
id = set42.save

set43 = CardSet.new
set43.name = "Torment"
set43._id = "TOR"
set43.description = 'Torment is the second set in the Odyssey Block for the collectible card game Magic: The Gathering. This expansion set, which focused on black, is unique in that it is the first set to focus on a single color. It has 40 Black cards, 28 Blue cards, 28 Red cards, 21 Green Cards and 21 White cards. This imbalance is, however, balanced by the release of the third expansion set in the Odyssey Block, Judgment.'
set43.wikipedia = "http://en.wikipedia.org/wiki/Torment_(Magic:_The_Gathering)"
set43.common = 55
set43.uncommon = 44
set43.rare = 44
set43.mythic_rare = 0
set43.basic_land = 0
set43.released_at = "February 4, 2002"
id = set43.save

set44 = CardSet.new
set44.name = "Odyssey"
set44._id = "ODY"
set44.description = 'Odyssey is the 24th Magic: The Gathering expert-level expansion set. Released in September, 2001, Odyssey is the first set in the Odyssey Block. Its expansion symbol is a small image of the Mirari (see storyline).'
set44.wikipedia = "http://en.wikipedia.org/wiki/Odyssey_(Magic:_The_Gathering)"
set44.common = 110
set44.uncommon = 110
set44.rare = 110
set44.mythic_rare = 0
set44.basic_land = 20
set44.released_at = "October 1, 2001"
id = set44.save

set45 = CardSet.new
set45.name = "Apocalypse"
set45._id = "APC"
set45.description = 'Apocalypse is the name of a Magic: The Gathering expansion set, released in June 2001. It is the third set of the Invasion Block.'
set45.wikipedia = "http://en.wikipedia.org/wiki/Apocalypse_(Magic:_The_Gathering)"
set45.common = 55
set45.uncommon = 44
set45.rare = 44
set45.mythic_rare = 0
set45.basic_land = 0
set45.released_at = "June 4, 2001"
id = set45.save

set46 = CardSet.new
set46.name = "Planeshift"
set46._id = "PLS"
set46.description = 'Planeshift is the name of the second set in the Invasion block of cards of Magic: The Gathering, along with the expansions Invasion and Apocalypse. It contained 143 cards.'
set46.wikipedia = "http://en.wikipedia.org/wiki/Planeshift_(Magic:_The_Gathering)"
set46.common = 55
set46.uncommon = 44
set46.rare = 44
set46.mythic_rare = 0
set46.basic_land = 0
set46.released_at = "February 5, 2001"
id = set46.save

set47 = CardSet.new
set47.name = "Invasion"
set47._id = "INV"
set47.description = 'Invasion is the 21st expert level set, and the first set in the Invasion block of cards of Magic: The Gathering. The rest of the block is Planeshift and Apocalypse. It contains 350 cards.'
set47.wikipedia = "http://en.wikipedia.org/wiki/Invasion_(Magic:_The_Gathering)"
set47.common = 110
set47.uncommon = 110
set47.rare = 110
set47.mythic_rare = 0
set47.basic_land = 20
set47.released_at = "October 2, 2000"
id = set47.save

set48 = CardSet.new
set48.name = "Magic 2014 Core Set"
set48._id = "M14"
set48.description = 'Magic 2014 is a Magic: The Gathering expansion set, released on July 19, 2013.[1] The tagline for the set is "Ignite your Spark."
Several new Magic 2014 cards and reprints have been released. The returning mechanics are Slivers, a series of creatures of which each grants an ability to each Sliver.'
set48.wikipedia = "http://en.wikipedia.org/wiki/Magic_2014"
set48.common = 101
set48.uncommon = 60
set48.rare = 53
set48.mythic_rare = 15
set48.basic_land = 20
set48.released_at = "July 19, 2013" 
id = set48.save

set49 = CardSet.new
set49.name = "Magic 2013"
set49._id = "M13"
set49.description = "Magic 2013 is a Magic: The Gathering expansion set, which was released on July 13, 2012.[1] The tagline for the set is 'Face a Greater Challenge.'
There were 108 new magic cards printed in this set. Magic 2013 is the first core set ever to have a multi colored card, the planeswalker Nicol Bolas. It is the second Magic Core set (Tenth Edition was the first) to feature legendary cards; one legendary creature of each color plus the artifact Akroma's Memorial."
set49.wikipedia = "http://en.wikipedia.org/wiki/Magic_2013"
set49.common = 101
set49.uncommon = 60
set49.rare = 53
set49.mythic_rare = 15
set49.basic_land = 20
set49.released_at = "July 13, 2012" 
id = set49.save

set50 = CardSet.new
set50.name = "Magic 2012"
set50._id = "M12"
set50.description = 'Magic 2012 is a Magic: The Gathering expansion set that was released on July 15, 2011. It is the thirteenth core set for Magic: the Gathering.[1] This set has 97 new cards in it.'
set50.wikipedia = "http://en.wikipedia.org/wiki/Magic_2012"
set50.common = 101
set50.uncommon = 60
set50.rare = 53
set50.mythic_rare = 15
set50.basic_land = 20
set50.released_at = "July 15, 2011" 
id = set50.save

set51 = CardSet.new
set51.name = "Magic 2011"
set51._id = "M11"
set51.description = 'agic 2011 is a Magic: The Gathering expansion set that was released on July 16, 2010. It was the twelfth core set for Magic: the Gathering. As its predecessor, Magic 2010, the set has new cards in it, but this time 110 new cards.'
set51.wikipedia = "http://en.wikipedia.org/wiki/Magic_2011"
set51.common = 101
set51.uncommon = 60
set51.rare = 53
set51.mythic_rare = 15
set51.basic_land = 20
set51.released_at = "July 16, 2010" 
id = set51.save

set52 = CardSet.new
set52.name = "Magic 2010"
set52._id = "M10"
set52.description = 'Magic 2010 is a Magic: The Gathering expansion set, that was released on July 17, 2009. It is the eleventh core set for Magic: the Gathering. It is the first Core Set since Limited Edition Beta (which included two cards accidentally left out of the original Limited Edition Alpha) to feature new cards;[1] about half the cards were new with the rest being reprints (in contrast to most previous core sets, which consisted entirely of reprints).'
set52.wikipedia = "http://en.wikipedia.org/wiki/Magic_2010"
set52.common = 101
set52.uncommon = 60
set52.rare = 53
set52.mythic_rare = 15
set52.basic_land = 20
set52.released_at = "July 17, 2009" 
id = set52.save

set53 = CardSet.new
set53.name = "Core Set - Tenth Edition"
set53._id = "10E"
set53.description = "Tenth Edition (10th Edition) is a 'Core Set' for the collectible trading card game Magic: The Gathering. It was released on July 13, 2007, replacing Ninth Edition as the core set of cards for standard tournament play. The symbol for Tenth Edition is the Roman numeral 'X'.  As part of their 'Selecting Tenth Edition' promotion, Wizards of the Coast gave fans the chance to manage a part of the set's brand. The results gave the Roman numeral 'X' over the number '10', along with many other card, art, and flavor text choices.
Tenth Edition was the first core set since Beta to be printed with black-bordered cards, rather than white-bordered ones. Tenth Edition is also the first core set to include legendary creatures (two of each color), bringing back flavorful relics of Magic's past such as Squee, Goblin Nabob, and Kamahl, Pit Fighter"
set53.wikipedia = "http://en.wikipedia.org/wiki/10th_Edition_(Magic:_The_Gathering)"
set53.common = 121
set53.uncommon = 121
set53.rare = 121
set53.mythic_rare = 0
set53.basic_land = 20
set53.released_at = "July 13, 2007" 
id = set53.save

set54 = CardSet.new
set54.name = "Core Set - Ninth Edition"
set54._id = "9ED"
set54.description = 'Ninth Edition (9th Edition) or Core Set is the fourth latest base set for the collectible trading card game, Magic: The Gathering.'
set54.wikipedia = "http://en.wikipedia.org/wiki/9th_Edition_(Magic:_The_Gathering)"
set54.common = 110
set54.uncommon = 110
set54.rare = 110
set54.mythic_rare = 0
set54.basic_land = 20
set54.released_at = "July 29, 2005" 
id = set54.save

set55 = CardSet.new
set55.name = "Core Set - Eighth Edition"
set55._id = "8ED"
set55.description = "Eighth Edition (8th Edition) or Core Set was the standard base set for the collectible trading card game, Magic: The Gathering from its release in 2003 until 9th Edition's release in 2005. Its expansion symbol is the number 8 with 3 cards behind it."
set55.wikipedia = "http://en.wikipedia.org/wiki/8th_Edition_(Magic:_The_Gathering)"
set55.common = 110
set55.uncommon = 110
set55.rare = 110
set55.mythic_rare = 0
set55.basic_land = 20
set55.released_at = "July 28, 2003" 
id = set55.save

set56 = CardSet.new
set56.name = "Seventh Edition"
set56._id= "7ED"
set56.description = '7th Edition was a Magic: The Gathering set printed in 2001. It is the only core set since Alpha to have introduced all-new art for every card. A white-bordered set, it was first available on April 2, 2001. The set contained 350 cards. The expansion symbol was a stylized 7.'
set56.wikipedia = "http://en.wikipedia.org/wiki/7th_Edition_(Magic:_The_Gathering)"
set56.common = 110
set56.uncommon = 110
set56.rare = 110
set56.mythic_rare = 0
set56.basic_land = 20
set56.released_at = "April 11, 2001"
id = set56.save

set57 = CardSet.new
set57.name = "Classic (Sixth Edition)"
set57._id = "6ED"
set57.description = 'The Sixth Edition core set of Magic: The Gathering, also known as Classic, was released on April 27, 1999. It contains 350 cards, with reprints of cards from previous core sets, as well as some new reprints from expansion sets through the Weatherlight expansion.'
set57.wikipedia = "http://en.wikipedia.org/wiki/6th_Edition_(Magic:_The_Gathering)"
set57.common = 110
set57.uncommon = 110
set57.rare = 110
set57.mythic_rare = 0
set57.basic_land = 20
set57.released_at = "April 28, 1999"
id = set57.save

set58 = CardSet.new
set58.name = "Fifth Edition"
set58._id = "5ED"
set58.description = "The Fifth Edition was the seventeenth Magic: The Gathering set and fifth core set, a revision of the base set released in March 1997. It contained 449 cards, counting multiple illustrations of basic lands, making it the largest card set in the game's history. It was the first edition of the core set to reprint cards from Fallen Empires, Ice Age, and Homelands."
set58.wikipedia = "http://en.wikipedia.org/wiki/5th_Edition_(Magic:_The_Gathering)"
set58.common = 165
set58.uncommon = 132
set58.rare = 132
set58.mythic_rare = 0
set58.basic_land = 20
set58.released_at = "March 24, 1997"
id = set58.save

set59 = CardSet.new
set59.name = "Fourth Edition"
set59._id = "4ED"
set59.description = 'The Fourth Edition of Magic: The Gathering was the tenth set released for the game, and the fourth base set (or "core set"). The set was released in April 1995 and contained 378 cards. It was the first set to reprint cards from the expansions Legends and The Dark. Fourth Edition cards have white borders. The set has no expansion symbol.
Fourth Edition was the first Magic set to be printed in Asian languages. It was published in English, French, German, Italian, and as a first for a Magic set in Japanese, traditional Chinese, Korean, Spanish, and Portuguese, which was printed primarily for the Brazilian market. Korean and Chinese Fourth Edition cards have been made only with black borders while Japanese, Portuguese, and Spanish cards exist with white and black borders.'
set59.wikipedia = "http://en.wikipedia.org/wiki/4th_Edition_(Magic:_The_Gathering)"
set59.common = 121
set59.uncommon = 121
set59.rare = 121
set59.mythic_rare = 0
set59.basic_land = 15
set59.released_at = "April 1, 1995"
id = set59.save

set60 = CardSet.new
set60.name = "Revised Edition"
set60._id = "3ED"
set60.description = 'The Revised Edition of Magic: The Gathering (also simply known as Revised) was the sixth set and third core set released for the game. Like previous core sets, it had no expansion symbol. Revised Edition cards are white-bordered and generally known for their washed-out look. The set was released in April 1994 and contained 306 cards. It was the first base set to contain cards from black-bordered sets other than Alpha and Beta'
set60.wikipedia = "http://en.wikipedia.org/wiki/Revised_(Magic:_The_Gathering)"
set60.common = 75
set60.uncommon = 95
set60.rare = 121
set60.mythic_rare = 0
set60.basic_land = 15
set60.released_at = "April 1, 1994"
id = set60.save

set61a = CardSet.new
set61a.name = "Limited Edition Alpha"
set61a._id = "LEA"
set61a.description = "The name Alpha refers to the first print run of the 
original Magic: The Gathering Limited Edition, the first Magic: The Gathering 
card set. It premiered in a limited release at Origins Game Fair in 1993, with 
a general release that August. Its print run of 2.6 million cards sold out very quickly and was replaced by Limited Edition's Beta print run. Limited Edition cards have no expansion symbol, no copyright date, no trademark symbols, although they do list the art credits at the bottom of the card."
set61a.wikipedia = "http://en.wikipedia.org/wiki/Alpha_(Magic:_The_Gathering)"
set61a.common = 74
set61a.uncommon = 95
set61a.rare = 116
set61a.mythic_rare = 0
set61a.basic_land = 10
set61a.released_at = "August 5, 1993" 
id = set61a.save

set61b = CardSet.new
set61b.name = "Limited Edition Beta"
set61b._id = "LEB"
set61b.description = "Limited Edition Beta or just Beta refers to the second 
print run of the original Magic: The Gathering Limited Edition, the first 
Magic: The Gathering card set.[3] It was released as soon as Wizards of the 
Coast could afford to pay for the rest of the print run. The company took 
advantage of the fact that the first edition print run had been split to 
correct some minor problems in the rules and fix some errors on the cards. 
Clarifications were made to the rulebook, and Richard Garfield's short fiction 
'Worzel's Tale' was removed to make room. Like Alpha it had no expansion symbol, 
and the text on the bottom left consisted of only the artist credit. 
Although many players speak of Alpha and Beta as different sets, officially 
they are the same set, and the company had expected that people wouldn't 
necessarily be able to tell the two press runs apart. However, the printer 
accidentally used different corner rounding dies for the second run, resulting 
in the two distinct sets."
set61b.wikipedia = "http://en.wikipedia.org/wiki/Beta_(Magic:_The_Gathering)"
set61b.common = 75
set61b.uncommon = 95
set61b.rare = 117
set61b.mythic_rare = 0
set61b.basic_land = 10
set61b.released_at = "October 1, 1993"
id = set61b.save

set61u = CardSet.new
set61u.name = "Unlimited Edition"
set61u._id = "2ED"
set61u.description = 'Unlimited Edition was the second Magic: The Gathering 
set. It was released on December 1, 1993, after Beta had sold out as quickly 
as Alpha had; this time the run was 40 million cards, the largest yet. It 
contains exactly the same cards as Beta, though with white borders instead of 
black, setting the precedent for all successive printings of the basic set, 
until the 2007 release of Tenth Edition, which returned to black borders.'
set61u.wikipedia = "http://en.wikipedia.org/wiki/Unlimited_(Magic:_The_Gathering)"
set61u.common = 75
set61u.uncommon = 95
set61u.rare = 117
set61u.mythic_rare = 0
set61u.basic_land = 15
set61u.released_at = "December 1, 1993"
id = set61u.save



set62 = CardSet.new
set62.name = "Prophecy"
set62._id = "PCY"
set62.description = 'Prophecy is a Magic: The Gathering expansion set. It was the third set of the Masques block, along with the expansion Mercadian Masques and Nemesis. The Prophecy expansion consists of 143 cards. Its expansion symbol are three crystals. Prophecy is set on the plane of Dominaria.'
set62.wikipedia = "http://en.wikipedia.org/wiki/Prophecy_(Magic:_The_Gathering)"
set62.common = 55
set62.uncommon = 44
set62.rare = 44
set62.mythic_rare = 0
set62.basic_land = 0
set62.released_at = "June 5, 2000" 
id = set62.save

set63 = CardSet.new
set63.name = "Nemesis"
set63._id = "NEM"
set63.description = 'Nemesis is the second set in the Mercadian Masques block of sets in the Magic: The Gathering game, along with the expansions Mercadian Masques and Prophecy. Its expansion symbol is an axe. The set consists of 143 cards and was released on February 14, 2000. Nemesis is set on the plane of Rath.'
set63.wikipedia = "http://en.wikipedia.org/wiki/Nemesis_(Magic:_The_Gathering)"
set63.common = 55
set63.uncommon = 44
set63.rare = 44
set63.mythic_rare = 0
set63.basic_land = 0
set63.released_at = "February 14, 2000"
id = set63.save

set64 = CardSet.new
set64.name = "Mercadian Masques"
set64._id = "MMQ"
set64.description = "Mercadian Masques is the nineteenth Magic: The Gathering expansion and was released in October 4, 1999 as the first set in the Masques block. It was the first set that is not subject to Wizards of the Coast's 'Reprint Policy'. Mercadian Masques is set on the plane of Mercadia."
set64.wikipedia = "http://en.wikipedia.org/wiki/Mercadian_Masques_(Magic:_The_Gathering)"
set64.common = 110
set64.uncommon = 110
set64.rare = 110
set64.mythic_rare = 0
set64.basic_land = 20
set64.released_at = "October 4, 1999" 
id = set64.save

set65 = CardSet.new
set65.name = "Urza's Destiny"
set65._id = 'UDS'
set65.description = "Urza's Destiny is a Magic: The Gathering set, third in the Urza Block. Urza's Destiny was released on June 23, 1999. It was released in digital form on Magic Online on April 13, 2011."
set65.wikipedia = "http://en.wikipedia.org/wiki/Urza%27s_Destiny"
set65.common = 55
set65.uncommon = 44
set65.rare = 44
set65.mythic_rare = 0
set65.basic_land = 0
set65.released_at = "May 29, 1999"  
id = set65.save

set66 = CardSet.new
set66.name = "Urza's Legacy"
set66._id = "ULG"
set66.description = "Urza's Legacy is a Magic: The Gathering set, second in the Urza Block. Urza's Legacy was released in February 1999."
set66.wikipedia = "http://en.wikipedia.org/wiki/Urza%27s_Legacy"
set66.common = 55
set66.uncommon = 44
set66.rare = 44
set66.mythic_rare = 0
set66.basic_land = 0
set66.released_at = "February 15, 1999"
id = set66.save

set67 = CardSet.new
set67.name = "Urza's Saga"
set67._id = "USG"
set67.description = "Urza's Saga is the 15th expert level set, a 350-card expansion set for the fantasy game Magic: The Gathering. It debuted in October 1998. Mark Rosewater considers it to contain some of the most powerful artifacts (and artifact-related cards) ever released, with many cards now banned in tournament formats.[1] The expansion symbol features a pair of gears."
set67.wikipedia = "http://en.wikipedia.org/wiki/Urza%27s_Saga"
set67.common = 110
set67.uncommon = 110
set67.rare = 110
set67.mythic_rare = 0
set67.basic_land = 20
set67.released_at = "March 29, 2010" 
id = set67.save

set68 = CardSet.new
set68.name = "Stronghold"
set68._id = "STH"
set68.description = "Stronghold was the 21st Magic: The Gathering set and thirteenth expert level set, and the second set in the Rath Block, released in March 1998. The block includes Tempest and Exodus. Stronghold contains 143 cards. Its expansion symbol is the closed portcullis of Volrath's stronghold."
set68.wikipedia = "http://en.wikipedia.org/wiki/Stronghold_(Magic:_the_Gathering)"
set68.common = 55
set68.uncommon = 44
set68.rare = 44
set68.mythic_rare = 0
set68.basic_land = 0
set68.released_at = "April 13, 2009" 
id = set68.save

set68b = CardSet.new
set68b.name = "Exodus"
set68b._id = "EXO"
set68b.description = "Exodus was the 22nd Magic: The Gathering set, fourteenth expert level set, and the third and final set in the Rath Block, released on 15 June 1998. Its expansion symbol is a bridge. On 7 December 2009 Exodus was released on Magic: The Gathering Online."
set68b.wikipedia = "http://en.wikipedia.org/wiki/Exodus_(Magic:_The_Gathering)"
set68b.common = 55
set68b.uncommon = 44
set68b.rare = 44
set68b.mythic_rare = 0
set68b.basic_land = 0
set68b.released_at = "June 15, 1998" 
id = set68b.save


set69 = CardSet.new
set69.name = "Tempest"
set69._id = "TMP"
set69.description = "Tempest was the 20th Magic: The Gathering set and twelfth expert level set, and the first set in the Rath Block, released in October 1997. The release of Tempest represented a large jump in the power level of the card set, compared to the previous Mirage block. Many cards from Tempest instantly became (and still are) tournament staples. Its expansion symbol is a cloud, with a lightning bolt erupting out. On 8 December 2008 Tempest was released for Magic: The Gathering Online."
set69.wikipedia = "http://en.wikipedia.org/wiki/Tempest_(Magic:_The_Gathering)"
set69.common = 110
set69.uncommon = 10
set69.rare = 110
set69.mythic_rare = 0
set69.basic_land = 20
set69.released_at = "December 8, 2008" 
id = set69.save

set70 = CardSet.new
set70.name = "Weatherlight"
set70._id = "WTH"
set70.description = "Weatherlight is the nineteenth Magic: The Gathering set and eleventh expert level set, third and last in the Mirage Block. Its expansion symbol is a book (the Thran Tome). It was released in June 1997 and later released for Magic: The Gathering Online on 12 December 2007.
Weatherlight marks a turning point in design and marketing philosophy for the Magic game & brand. While previous sets included allusions to an overarching story, Weatherlight was the first set to explicitly tell an ordered narrative focused on developed, archetypical characters."
set70.wikipedia = "http://en.wikipedia.org/wiki/Weatherlight_(Magic:_The_Gathering)"
set70.common = 62
set70.uncommon = 55
set70.rare = 50
set70.mythic_rare = 0
set70.basic_land = 0
set70.released_at = "December 12, 2007" 
id = set70.save


set71 = CardSet.new
set71.name = "Visions"
set71._id = "VIS"
set71.description = "Visions was the sixteenth Magic: The Gathering set and tenth expert level set, released in February 1997. This expansion continued the Mirage block by using the same setting and mechanics introduced in Mirage. The expansion symbol for Visions is a V-shaped symbol, which is the 'triangle of war' used by the Zhalfir in the story. On 10 April 2006 Visions was released on Magic: The Gathering Online."
set71.wikipedia = "http://en.wikipedia.org/wiki/Visions_(Magic:_The_Gathering)"
set71.common = 62
set71.uncommon = 55
set71.rare = 50
set71.mythic_rare = 0
set71.basic_land = 0
set71.released_at = "April 10, 2005" 
id = set71.save


set72 = CardSet.new
set72.name = "Mirage"
set72._id = "MIR"
set72.description = "Mirage was the fifteenth Magic: The Gathering set and ninth expert level set, released in October 1996. This expansion began the first official block set with one large expansion being followed by two smaller expansions all tied together through card mechanics and setting. This expansion also introduced 5th Edition rules (5th Edition was released in March 1997). Mirage's expansion symbol is a palm tree. On 5 December 2005 Mirage was released on Magic: The Gathering Online. It was the first set that was retroactively released on Magic Online."
set72.wikipedia = "http://en.wikipedia.org/wiki/Mirage_(Magic:_The_Gathering)"
set72.common = 110
set72.uncommon = 110
set72.rare = 110
set72.mythic_rare = 0
set72.basic_land = 20
set72.released_at = "December 5, 2005" 
id = set72.save

set73 = CardSet.new
set73.name = "Alliances"
set73._id = "ALL"
set73.description = 'Alliances is the eighth Magic expansion and the second set in the Ice Age block. It was originally the third set but it became the second when Homelands was removed from the block to make place for Coldsnap.'
set73.wikipedia = "http://en.wikipedia.org/wiki/Alliances_(Magic:_The_Gathering)"
set73.common = 110
set73.uncommon = 43
set73.rare = 46
set73.mythic_rare = 0
set73.basic_land = 0
set73.released_at = "May 18, 1996" 
id = set73.save

set74 = CardSet.new
set74.name = "Homelands"
set74._id = "HML"
set74.description = 'Homelands was the thirteenth Magic: The Gathering set and seventh expert level set, released in October 1995. It was considered to be part of the Ice Age block until the announcement of Coldsnap in October 2005.'
set74.wikipedia = "http://en.wikipedia.org/wiki/Homelands_(Magic:_The_Gathering)"
set74.common = 71
set74.uncommon = 27
set74.rare = 42
set74.mythic_rare = 0
set74.basic_land = 0
set74.released_at = "October 1, 1995"
id = set74.save

set75 = CardSet.new
set75.name = "Ice Age"
set75._id = "ICE"
set75.description = 'ce Age is the eleventh Magic set and the sixth expansion set, released in June 1995. Set in the years from 450 to 2934 AR, the set describes a world set in perpetual winter due to the events in Antiquities.'
set75.wikipedia = "http://en.wikipedia.org/wiki/Ice_Age_(Magic:_The_Gathering)"
set75.common = 121
set75.uncommon = 121
set75.rare = 121
set75.mythic_rare = 0
set75.basic_land = 20
set75.released_at = "June 1, 1995"
id = set75.save

set76 = CardSet.new
set76.name = "Fallen Empires"
set76._id = "FEM"
set16.description = 'Fallen Empires was the ninth Magic: The Gathering set and the fifth expansion set, released in November 1994. Out of the set of 187 cards, 102 were functionally unique, with the remainder being variant illustrations of other cards in the set. The mechanics of Fallen Empires include a tribal subtheme and heavy use of counters and tokens. Thematically the set experiments with conflict within the colors. The expansion symbol for the set is a crown.'
set76.wikipedia = "http://en.wikipedia.org/wiki/Fallen_Empires"
set76.common = 121
set76.uncommon = 30
set76.rare = 36
set76.mythic_rare = 0
set76.basic_land = 0
set76.released_at = "November 1, 1994"
id = set76.save

set77 = CardSet.new
set77.name = "The Dark"
set77._id = "DRK"
set77.description = 'The Dark was the eighth Magic: The Gathering set and the fourth expansion to the game, released in August 1994. The set continued the story begun in Antiquities and recounted the aftermath of the events of that set. The 119-card set had a dark, sacrificial theme, though unlike its predecessor Legends it did not introduce any new keywords. Mechanically the set has no clear focus, experimenting in minor quantities with sacrifice and a tribal subtheme. The expansion symbol for the The Dark is an eclipsed moon.'
set77.wikipedia = "http://en.wikipedia.org/wiki/The_Dark_(Magic:_The_Gathering)"
set77.common = 40
set77.uncommon = 44
set77.rare = 35
set77.mythic_rare = 0
set77.basic_land = 0
set77.released_at = "August 1, 1994"
id = set77.save

set78 = CardSet.new
set78.name = "Legends"
set78._id = "LEG"
set78.description = 'Legends was the seventh Magic: The Gathering set and the third expansion set, released in June 1994. It was the first expansion set to be sold in packs of 15 (previous expansions had been sold in packs of 8). The set was designed by Wizards of the Coast co-founder Steve Conard and friend Robin Herbert in Canada before the game was initially released.[5] Legends introduces several mechanics and keywords to the game, but the focus of the set lies clearly on the Legends themselves. These were the first multicolored cards in the game. They are also special in that they are all Legendary creatures, meaning that only one of each type can be in play. The expansion symbol for Legends is the capital of a column.'
set78.wikipedia = "http://en.wikipedia.org/wiki/Legends_(Magic:_The_Gathering)"
set78.common = 75
set78.uncommon = 114
set78.rare = 121
set78.mythic_rare = 0
set78.basic_land = 0
set78.released_at = "June 1, 1994"
id = set78.save

set79 = CardSet.new
set79.name = "Antiquities"
set79._id = "ATQ"
set79.description = "Antiquities was the fifth Magic: The Gathering set and the second expansion set. It was the first set to have an original backstory that explores the mythos of the Magic universe (see Magic: The Gathering storylines). The story is primarily about the brothers Urza and Mishra who are inseparable at first, but become sworn enemies over the finding of two power stones. Trying to get hold of the other's stone they eventually lay waste to the whole continent of Terisiare. The set was created by the group of students at the University of Pennsylvania that had helped Richard Garfield design the original game. Mechanically Antiquities revolves around artifacts. Only 35 of the 85 different cards are colored, the remaining 50 cards being artifacts and lands. The expansion symbol for Antiquities was an anvil."
set79.wikipedia = "http://en.wikipedia.org/wiki/Antiquities_(Magic:_The_Gathering)"
set79.common = 30
set79.uncommon = 44
set79.rare = 26
set79.mythic_rare = 0
set79.basic_land = 0
set79.released_at = "March 1, 1994"
id = set79.save

set80 = CardSet.new
set80.name = "Arabian Nights"
set80._id = "ARN"
set80.description = 'Arabian Nights was the fourth Magic: The Gathering set 
and the first expansion set. The set is composed entirely of new cards. The 
setting of Arabian Nights is inspired by the themes and characters of the 
Thousand and One Arabian Nights with some of the characters and places coming 
directly from these tales. Arabian Nights is the only regular Magic expansion 
based on real-world fiction. All other sets with the exception of the Portal 
Three Kingdoms introductory set are based on fiction created exclusively for 
the game. The expansion symbol of Arabian Nights is a scimitar.'
set80.wikipedia = "http://en.wikipedia.org/wiki/Arabian_Nights_(Magic:_The_Gathering)"
set80.common = 40
set80.uncommon = 19
set80.rare = 32
set80.mythic_rare = 0
set80.basic_land = 1
set80.released_at = "December 1, 1993"
id = set80.save


set81 = CardSet.new
set81.name = "Chronicles"
set81._id = "CHR"
set81.block = ""
set81.description = "Chronicles was the twelfth Magic: The Gathering set, and the first compilation set, released in July 1995 by Wizards of the Coast. The set is one of two sets that have been sold in twelve-card booster packs, the other having been Alliances."
set81.wikipedia = "http://en.wikipedia.org/wiki/Chronicles_(Magic:_The_Gathering)"
set81.common = 37
set81.uncommon = 43
set81.rare = 45
set81.mythic_rare = 0
set81.basic_land = 0
set81.released_at = "July 1, 1995"
id = set81.save

set82 = CardSet.new
set82.name = "Anthologies"
set82._id = "ATH"
set82.block = ""
set82.description = "Anthologies was a box set, the second compilation set, from the card game Magic: The Gathering. It was printed in November 1998 to celebrate the 5th anniversary of Magic. It featured cards from Alpha through Urza's Saga. The print run was unknown. When it was first printed, Anthologies sold for around $20.00 MSRP, but prices have risen since. As the cards have white borders and standard backs, they are tournament-legal.
Unlike Chronicles, an expansion, but like other box sets, such as Battle Royale or Duel Decks: Jace vs. Chandra, the reprinted cards did not count as current product, and thus were only legal in formats which allowed the original cards being reprinted to be used, and were not automatically legal in Standard at the time the product was available"
set82.wikipedia = "http://en.wikipedia.org/wiki/Anthologies_(Magic:_The_Gathering)"
set82.common = 120
set82.uncommon = 0
set82.rare = 0
set82.mythic_rare = 0
set82.basic_land = 0
set82.released_at = "November 1, 1998"
id = set82.save


set83 = CardSet.new
set83.name = "Battle Royale"
set83._id = "BRB"
set83.block = ""
set83.description = "Battle Royale was a Magic: The Gathering boxed set, the third compilation set, released in November 1999 as a collection of cards emphasizing the multiplayer aspect of the game. Most of the cards included are ones that can affect multiple opponents. This promotion included cards from all different sets that existed previous to it. The cards still retained their original expansion symbols although they were printed with white borders, which was the standard for reprinted Magic: The Gathering cards of 'core sets' until the 2007 release of Tenth Edition. These are the only sets that are printed with white borders (which started with Unlimited.) Another interesting aspect is that colored expansions symbols were added to the cards that didn’t have them previously (namely cards from Tempest, Portal: Second Age, Stronghold and Ice Age.)
The set included 160 cards built into four different two-color theme decks which are 40 cards each: Spirit Gale (blue / white), Chargoyf (green / red), The Deluge (green / white), and Cinder Heart (black / red)."
set83.wikipedia = "http://en.wikipedia.org/wiki/Battle_Royale_(Magic:_The_Gathering)"
set83.common = 160
set83.uncommon = 0
set83.rare = 0
set83.mythic_rare = 0
set83.basic_land = 0
set83.released_at = "November 12, 1999"
id = set83.save


set84 = CardSet.new
set84.name = "Beatdown"
set84._id = "BTD"
set84.block = ""
set84.description = "Beatdown is a box set for the card game Magic: The Gathering, and the fourth compilation set. It was created for special reprint purposes only and was not legal in Standard at the time of its release. Beatdown was released as a pair of preconstructed decks combined with accessories, unlike the normal distribution of Magic cards in randomized packs. At the time of release it sold for around $30.00 MSRP. Alternate art was done for four cards: Sengir Vampire, Erhnam Djinn, Ball Lightning, and Clockwork Beast. The set is white-bordered, and the expansion symbol is a mace. There are no White cards in the set."
set84.wikipedia = "http://en.wikipedia.org/wiki/Beatdown_(Magic:_The_Gathering)"
set84.common = 122
set84.uncommon = 0
set84.rare = 0
set84.mythic_rare = 0
set84.basic_land = 0
set84.released_at = "December 1, 2000"
id = set84.save


set85 = CardSet.new
set85.name = "Deckmasters: Garfield vs. Finkel"
set85._id = "DKM"
set85.block = ""
set85.description = "Deckmasters: Garfield vs. Finkel, usually known as simply Deckmasters, was a Magic: the Gathering set created in 2001 featuring copies of the decks used in a promotional match between Richard Garfield, the creator of the card game, and Jon Finkel, a Magic World Champion. Two decks were included in the set, a red/green deck used by Richard Garfield, and a red/black deck that was played by Finkel. It is the fifth compilation set."
set85.wikipedia = "http://en.wikipedia.org/wiki/Deckmasters"
set85.common = 124
set85.uncommon = 0
set85.rare = 0
set85.mythic_rare = 0
set85.basic_land = 0
set85.released_at = "December 1, 2001"
id = set85.save

set86 = CardSet.new
set86.name = "Duels of the Planeswalkers"
set86._id = "DPA"
set86.block = "Video Game"
set86.description = "Magic: The Gathering – Duels of the Planeswalkers (DP) is a video game based on the popular collectible card game of the same name, published by Wizards of the Coast. It was released on June 17, 2009."
set86.wikipedia = "http://en.wikipedia.org/wiki/Magic:_The_Gathering_%E2%80%93_Duels_of_the_Planeswalkers"
set86.common = 0
set86.uncommon = 0
set86.rare = 0
set86.mythic_rare = 0
set86.basic_land = 0
set86.released_at = "June 4, 2010"
id = set86.save


set87 = CardSet.new
set87.name = "Modern Masters"
set87._id = "MMA"
set87.block = ""
set87.description = "Modern Masters is the second Magic: The Gathering compilation set, with the first compilation set being Chronicles. It was released on June 7th, 2013 by Wizards of the Coast. One booster box of Modern Masters contains only 24 booster packs, compared to a regular expansion containing 36 packs. The pricing of a booster pack from Modern Masters has a suggested retail price of $6.99 up from a regular suggested price of $3.99 for a regular expansion booster pack.[2] The set will be released in English only."
set87.wikipedia = "http://en.wikipedia.org/wiki/Modern_Masters"
set87.common = 101
set87.uncommon = 60
set87.rare = 53
set87.mythic_rare = 15
set87.basic_land = 0
set87.released_at = "June 7, 2013"
id = set87.save

set88 = CardSet.new
set88.name = "Duel Decks: Elves vs. Goblins"
set88._id = "EVG"
set88.block = "Duel Decks"
set88.description = ""
set88.wikipedia = ""
set88.common = 120
set88.uncommon = 0
set88.rare = 0
set88.mythic_rare = 0
set88.basic_land = 0
set88.released_at = "November 16, 2007"
id = set88.save

set89 = CardSet.new
set89.name = "Duel Decks: Jace vs. Chandra"
set89._id = "DD2"
set89.block = "Duel Decks"
set89.description = ""
set89.wikipedia = ""
set89.common = 120
set89.uncommon = 0
set89.rare = 0
set89.mythic_rare = 0
set89.basic_land = 0
set89.released_at = "November 7, 2008"
id = set89.save

set90 = CardSet.new
set90.name = "Duel Decks: Divine vs. Demonic"
set90._id = "DDC"
set90.block = "Duel Decks"
set90.description = ""
set90.wikipedia = ""
set90.common = 120
set90.uncommon = 0
set90.rare = 0
set90.mythic_rare = 0
set90.basic_land = 0
set90.released_at = "April 10, 2009"
id = set90.save

set91 = CardSet.new
set91.name = "Duel Decks: Garruk vs. Liliana"
set91._id = "DDD"
set91.block = "Duel Decks"
set91.description = ""
set91.wikipedia = ""
set91.common = 120
set91.uncommon = 0
set91.rare = 0
set91.mythic_rare = 0
set91.basic_land = 0
set91.released_at = "October 30, 2009"
id = set91.save

set92 = CardSet.new
set92.name = "Duel Decks: Phyrexia vs. the Coalition"
set92._id = "DDE"
set92.block = "Duel Decks"
set92.description = ""
set92.wikipedia = ""
set92.common = 120
set92.uncommon = 0
set92.rare = 0
set92.mythic_rare = 0
set92.basic_land = 0
set92.released_at = "March 19, 2010"
id = set92.save

set93 = CardSet.new
set93.name = "Duel Decks: Elspeth vs. Tezzeret"
set93._id = "DDF"
set93.block = "Duel Decks"
set93.description = ""
set93.wikipedia = ""
set93.common = 120
set93.uncommon = 0
set93.rare = 0
set93.mythic_rare = 0
set93.basic_land = 0
set93.released_at = "September 3, 2010"
id = set93.save

set94 = CardSet.new
set94.name = "Duel Decks: Knights vs. Dragons"
set94._id = "DDG"
set94.block = "Duel Decks"
set94.description = ""
set94.wikipedia = ""
set94.common = 120
set94.uncommon = 0
set94.rare = 0
set94.mythic_rare = 0
set94.basic_land = 0
set94.released_at = "April 1, 2011"
id = set94.save

set95 = CardSet.new
set95.name = "Duel Decks: Ajani vs. Nicol Bolas"
set95._id = "DDH"
set95.block = "Duel Decks"
set95.description = ""
set95.wikipedia = ""
set95.common = 120
set95.uncommon = 0
set95.rare = 0
set95.mythic_rare = 0
set95.basic_land = 0
set95.released_at = "September 2, 2011"
id = set95.save

set96 = CardSet.new
set96.name = "Duel Decks: Venser vs. Koth"
set96._id = "DDI"
set96.block = "Duel Decks"
set96.description = ""
set96.wikipedia = ""
set96.common = 120
set96.uncommon = 0
set96.rare = 0
set96.mythic_rare = 0
set96.basic_land = 0
set96.released_at = "March 30, 2012"
id = set96.save

set97 = CardSet.new
set97.name = "Duel Decks: Izzet vs. Golgari"
set97._id = "DDJ"
set97.block = "Duel Decks"
set97.description = ""
set97.wikipedia = ""
set97.common = 120
set97.uncommon = 0
set97.rare = 0
set97.mythic_rare = 0
set97.basic_land = 0
set97.released_at = "September 7, 2012"
id = set97.save

set98 = CardSet.new
set98.name = "Duel Decks: Sorin vs. Tibalt"
set98._id = "DDH"
set98.block = "Duel Decks"
set98.description = ""
set98.wikipedia = ""
set98.common = 120
set98.uncommon = 0
set98.rare = 0
set98.mythic_rare = 0
set98.basic_land = 0
set98.released_at = "March 15, 2013"
id = set98.save


set99 = CardSet.new
set99.name = "From the Vault: Dragons"
set99._id = "DRB"
set99.block = "From the vault"
set99.description = "From the Vault: Dragons was released August 29, 2008.[1] It contained 15 cards, all of which were Dragons, and one of which was a pre-release of a card in the Shards of Alara set."
set99.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set99.common = 15
set99.uncommon = 0
set99.rare = 0
set99.mythic_rare = 0
set99.basic_land = 0
set99.released_at = "August 29, 2008"
id = set99.save

set100 = CardSet.new
set100.name = "From the Vault: Exiled"
set100._id = "V09"
set100.block = "From the vault"
set100.description = "From the Vault: Exiled was released August 28, 2009. It contained 15 cards, all of which are or were banned or restricted in some or all formats."
set100.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set100.common = 15
set100.uncommon = 0
set100.rare = 0
set100.mythic_rare = 0
set100.basic_land = 0
set100.released_at = "August 28, 2009"
id = set100.save

set101 = CardSet.new
set101.name = "From the Vault: Relics"
set101._id = "V10"
set101.block = "From the vault"
set101.description = "From the Vault: Relics was released August 27, 2010. It contained 15 cards, all of which were artifacts, and one of which was a pre-release of a card in the Scars of Mirrodin set."
set101.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set101.common = 15
set101.uncommon = 0
set101.rare = 0
set101.mythic_rare = 0
set101.basic_land = 0
set101.released_at = "August 27, 2010"
id = set101.save

set102 = CardSet.new
set102.name = "From the Vault: Legends"
set102._id = "V11"
set102.block = "From the vault"
set102.description = "From the Vault: Legends was released August 26, 2011. It contained 15 cards, all of which were legendary, and one of which was a pre-release of a card in the Innistrad set."
set102.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set102.common = 15
set102.uncommon = 0
set102.rare = 0
set102.mythic_rare = 0
set102.basic_land = 0
set102.released_at = "August 26, 2011"
id = set102.save

set103 = CardSet.new
set103.name = "From the Vault: Realms"
set103._id = "V12"
set103.block = "From the vault"
set103.description = "From the Vault: Realms: was released on August 31, 2012. It contained 15 cards, seven with new alternate art, all of which are lands."
set103.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set103.common = 15
set103.uncommon = 0
set103.rare = 0
set103.mythic_rare = 0
set103.basic_land = 0
set103.released_at = "August 31, 2012"
id = set103.save

set104 = CardSet.new
set104.name = "From the Vault: Twenty"
set104._id = ""
set104.block = "From the vault"
set104.description = "From the Vault: Twenty will be released on August 23, 2013. It will contain twenty cards, in commemoration of Magic's 20th anniversary."
set104.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set104.common = 20
set104.uncommon = 0
set104.rare = 0
set104.mythic_rare = 0
set104.basic_land = 0
set104.released_at = "August 23, 2013"
id = set104.save

set105 = CardSet.new
set105.name = "Premium Deck Series: Slivers"
set105._id = "H09"
set105.block = "Premium Deck Series"
set105.description = "Premium Deck Series: Slivers was released November 20, 2009. All creatures in this deck were of the Sliver subtype (including the mythic-rare Sliver Overlord)."
set105.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set105.common = 59
set105.uncommon = 0
set105.rare = 0
set105.mythic_rare = 1
set105.basic_land = 0
set105.released_at = "November 20, 2009"
id = set105.save

set106 = CardSet.new
set106.name = "Premium Deck Series: Fire & Lightning"
set106._id = "PD2"
set106.block = "Premium Deck Series"
set106.description = "Premium Deck Series: Fire & Lightning was released November 19, 2010. The set was mono-red and revolved around Elemental creatures and various red spells that dealt direct damage to creatures or opponents."
set106.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set106.common = 60
set106.uncommon = 0
set106.rare = 0
set106.mythic_rare = 0
set106.basic_land = 0
set106.released_at = "November 19, 2010"
id = set106.save

set107 = CardSet.new
set107.name = "Premium Deck Series: Graveborn"
set107._id = "PD3"
set107.block = "Premium Deck Series"
set107.description = "Premium Deck Series: Graveborn was released November 18, 2011. The set revolved around cards that deal with the graveyard."
set107.wikipedia = "http://en.wikipedia.org/wiki/From_the_Vault:_Exiled"
set107.common = 60
set107.uncommon = 0
set107.rare = 0
set107.mythic_rare = 0
set107.basic_land = 0
set107.released_at = "November 18, 2011"
id = set107.save

set108 = CardSet.new
set108.name = "Portal"
set108._id = "POR"
set108.block = "Portal"
set108.description = "Portal is the eighteenth Magic: The Gathering set and first starter level set, released on May 1, 1997. Depending on the language, the set contains between 221 and 228 cards."
set108.wikipedia = "http://en.wikipedia.org/wiki/Portal_(Magic:_The_Gathering)"
set108.common = 90
set108.uncommon = 57
set108.rare = 55
set108.mythic_rare = 0
set108.basic_land = 20
set108.released_at = "June 1, 1997"
id = set108.save

set108 = CardSet.new
set108.name = "Portal Second Age"
set108._id = "P02"
set108.block = "Portal"
set108.description = "Portal Second Age is the name of the second Magic: The Gathering starter level set which came out on June 24, 1998. The set contains 165 cards in all languages except Portuguese, which contained 49 cards."
set108.wikipedia = "http://en.wikipedia.org/wiki/Portal_Second_Age"
set108.common = 70
set108.uncommon = 35
set108.rare = 45
set108.mythic_rare = 0
set108.basic_land = 15
set108.released_at = "June 1, 1998"
id = set108.save

set109 = CardSet.new
set109.name = "Portal Three Kingdoms"
set109._id = "PTK"
set109.block = "Portal"
set109.description = "Portal Three Kingdoms is the third Magic: The Gathering expansion of the Portal block, and the third starter level set. Like the other expansions in the Portal block, Portal: Three Kingdoms is designed for beginners to Magic. The setting is heavily based on the Chinese historical novel Romance of the Three Kingdoms by Luo Guanzhong. Each card, including each basic land, was illustrated by a Chinese artist."
set109.wikipedia = "http://en.wikipedia.org/wiki/Portal_Three_Kingdoms"
set109.common = 55
set109.uncommon = 55
set109.rare = 55
set109.mythic_rare = 0
set109.basic_land = 15
set109.released_at = "May 1, 1999"
id = set109.save

set110 = CardSet.new
set110.name = "Starter 1999"
set110._id = "S99"
set110.block = "Starter"
set110.description = "Starter is the name of the Magic: The Gathering beginners set which came out on August 27, 1999. The set contains 173 cards. The set became known as Starter 1999 after the release of Starter 2000, and is the fourth starter level set."
set110.wikipedia = "http://en.wikipedia.org/wiki/Starter_1999"
set110.common = 63
set110.uncommon = 55
set110.rare = 35
set110.mythic_rare = 0
set110.basic_land = 20
set110.released_at = "July 1, 1999"
id = set110.save

set111 = CardSet.new
set111.name = "Starter 2000"
set111._id = "S00"
set111.block = "Starter"
set111.description = "Starter 2000 was a limited run small theme deck only expansion set released for Magic: The Gathering on April 24, 2000. The set would be the fifth and last 'Starter Level' standalone set to see production."
set111.wikipedia = "http://en.wikipedia.org/wiki/Starter_2000"
set111.common = 39
set111.uncommon = 6
set111.rare = 2
set111.mythic_rare = 0
set111.basic_land = 10
set111.released_at = "July 1, 2000"
id = set111.save

set112 = CardSet.new
set112.name = "Masters Edition IV"
set112._id = "ME4"
set112.block = "Masters Editions"
set112.description = "The fourth installment of the series consists mainly of cards from Beta, Arabian Nights, Antiquities, and the Portal sets. While Beta, Arabian Nights, and Antiquities reflect the era Masters Edition IV cards should mostly be from, the Portal and Starter cards in the set were necessary to create an enjoyable limited environment. Otherwise the number of creatures with an acceptable power level would have been too small.[5] The mechanics employed in Masters Edition IV focus on artifacts. Finally Birds, Zombies, Goblins, and Elephants are the tribes used in Masters Edition IV. The most prominent exception to this are the original dual lands, which had been previously printed across two sets, but here are reprinted in their entirety."
set112.wikipedia = "http://en.wikipedia.org/wiki/Masters_Edition_IV#Masters_Edition_IV"
set112.common = 80
set112.uncommon = 72
set112.rare = 105
set112.mythic_rare = 0
set112.basic_land = 12
set112.released_at = "January 10, 2011"
id = set112.save

















