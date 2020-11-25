# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Word.destroy_all
Exercise.destroy_all
Flashcard.destroy_all

puts "Creating Users..."
celine = User.create!(first_name: "Céline", last_name: "Dion", email: "celine.dion@gmail.com", password: "secret", profile_picture: "https://images.pexels.com/photos/4491476/pexels-photo-4491476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", mother_tongue: "fr")
paul = User.create!(first_name: "Paul", last_name: "Martin", email: "paul.martin@gmail.com", password: "secret", profile_picture: "https://images.pexels.com/photos/4491476/pexels-photo-4491476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", mother_tongue: "fr")
margot = User.create!(first_name: "Margot", last_name: "Agneau", email: "margot.agneau@gmail.com", password: "secret", profile_picture: "https://images.pexels.com/photos/4491476/pexels-photo-4491476.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", mother_tongue: "fr")

puts "Creating Categories..."
finance = Category.create!(name: "Finance")
economie = Category.create!(name: "Économie")
politique = Category.create!(name: "Politique")
webdev = Category.create!(name: "Webdev")
histoire = Category.create!(name: "Histoire")
philosophie = Category.create!(name: "Philosophie")

puts "Creating 50 Words..."
interest_rate = Word.create!(word_requested: "Interest Rate", word_translated: "Taux d'intérêt", language_requested: "en", language_translated: "fr", context_details: "This interest is calculated from the due date for payment at the official interest rate for each year; interest is payable on repayment of the debt. ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
investment = Word.create!(word_requested: "Investment", word_translated: "Investissement", language_requested: "en", language_translated: "fr", context_details: "[...] play an important role in encouraging both responsible investment demand (individual or institutional investors) and supply [...] ", progress: "Appris", favorite: "false", user_id: margot.id, category_id: finance.id)
cash_outflow = Word.create!(word_requested: "Cash outflow", word_translated: "Les sorties de trésorerie", language_requested: "en", language_translated: "fr", context_details: "During the year, we acquired the assets of ThunderBay and Volt and the shares of Get it Pages representing a total cash outflow of $212.1 million. ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
debt = Word.create!(word_requested: "Debt", word_translated: "Dette", language_requested: "en", language_translated: "fr", context_details: "Therefore, the share of the banks not providing a subsidy should be deducted from the total amount of the debt-to-equity swap. ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
mortgage = Word.create!(word_requested: "Mortgage", word_translated: "Hypothèque", language_requested: "en", language_translated: "fr", context_details: "We should not forget that for most European consumers, taking out a mortgage is perhaps the most significant financial decision in their lives. ", progress: "En cours", favorite: "false", user_id: margot.id, category_id: finance.id)
short_term_loan = Word.create!(word_requested: "Short-term loan", word_translated: "Prêt à court terme", language_requested: "en", language_translated: "fr", context_details: "When consumers have difficulty paying back the loan, lenders may let one short term loan rollover into the next and so on. ", progress: "Appris", favorite: "true", user_id: margot.id, category_id: finance.id)
overdraft = Word.create!(word_requested: "Overdraft", word_translated: "Découvert", language_requested: "en", language_translated: "fr", context_details: "Article 104 prohibits the ECB and the NCBs from providing overdraft facilities or any other type of credit facility to governments [...] ", progress: "Appris", favorite: "false", user_id: margot.id, category_id: finance.id)
shares = Word.create!(word_requested: "Shares", word_translated: "Actions", language_requested: "en", language_translated: "fr", context_details: "Overall, it has to be noted that the Community industry's market shares in the free market fell by 6 %, which shows that its growth [...] ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
bear_market = Word.create!(word_requested: "Bear market", word_translated: "marché baissier", language_requested: "en", language_translated: "fr", context_details: "This was recently shown when, after a very pronounced bear market in 2008, equity markets rebounded in 2009. ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
net_asset_value = Word.create!(word_requested: "Net Asset Value", word_translated: "Valeur nette d'inventaire", language_requested: "en", language_translated: "fr", context_details: "Realisation of these risks may cause the sub-fund's net asset value to fall. ", progress: "Nouveau", favorite: "false", user_id: margot.id, category_id: finance.id)
shareholder = Word.create!(word_requested: "shareholder", word_translated: "actionnaire", language_requested: "en", language_translated: "fr", context_details: "Thanks to its credit rating, the new shareholder was to have enabled the cost of refinancing to be reduced and the bank's own funds to be restored. ", progress: "En cours", favorite: "true", user_id: celine.id, category_id: economie.id)
yield_word = Word.create!(word_requested: "Yield", word_translated: "rendement", language_requested: "en", language_translated: "fr", context_details: "Moreover, the steepening of the yield curve in 1999 may have been accompanied by shifts towards investments in longer-term financial assets. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: economie.id)
bondholder = Word.create!(word_requested: "Bondholder", word_translated: "porteur d'obligations", language_requested: "en", language_translated: "fr", context_details: "This convertible bond can be converted at any time at the choice of the bondholder until ten days prior to maturity of the convertible bond. ", progress: "Appris", favorite: "false", user_id: celine.id, category_id: economie.id)
policy_maker = Word.create!(word_requested: "Policy maker", word_translated: "Décideur politique", language_requested: "en", language_translated: "fr", context_details: "Are you a regional innovation policy-maker, information officer or research programme manager and want to exchange good [...] ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: economie.id)
treasury_bond = Word.create!(word_requested: "Treasury bond", word_translated: "bons du Trésor", language_requested: "en", language_translated: "fr", context_details: "U.S Treasury bond prices are moving higher as investors rush to the security of government-guaranteed debt and avoid the risk of corporate bonds. ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: economie.id)
bankruptcy = Word.create!(word_requested: "Bankruptcy", word_translated: "La faillite", language_requested: "en", language_translated: "fr", context_details: "This may have been linked to growing concerns about creditworthiness in an environment where bankruptcy rates rose. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: economie.id)
currency = Word.create!(word_requested: "Currency", word_translated: "Devise", language_requested: "en", language_translated: "fr", context_details: "Parliament also supports frontloading and would, in this way, like to remove the barriers to the swift introduction of the currency. ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: economie.id)
deposit = Word.create!(word_requested: "Deposit", word_translated: "Dépôt", language_requested: "en", language_translated: "fr", context_details: "[...] measures to ensure the stability of the financial sector, including the measure of deposit guarantees up to EUR 100 000. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: economie.id)
loan = Word.create!(word_requested: "Loan", word_translated: "Prêt", language_requested: "en", language_translated: "fr", context_details: "Syndicated loans shall only constitute eligible collateral for Eurosystem credit operations if the relevant syndicated loan agreement includes an express provision pursuant to which all payments [...] ", progress: "En cours", favorite: "true", user_id: celine.id, category_id: economie.id)
trade = Word.create!(word_requested: "Trade", word_translated: "Commerce", language_requested: "en", language_translated: "fr", context_details: "In fact we think it is crucial to fight the trade distortions caused by domestic aid policies, to work for improved market [...] ", progress: "Appris", favorite: "false", user_id: celine.id, category_id: economie.id)
filibuster = Word.create!(word_requested: "Filibuster", word_translated: "Obstruction", language_requested: "en", language_translated: "fr", context_details: "Therefore, we have a filibuster whereby the question before the committee never gets voted on and no action is ever taken. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: politique.id)
nominee = Word.create!(word_requested: "Nominee", word_translated: "Candidat", language_requested: "en", language_translated: "fr", context_details: "Only one nominee has occupied a position which has to be declared. ", progress: "Appris", favorite: "false", user_id: celine.id, category_id: politique.id)
gerrymander = Word.create!(word_requested: "Gerrymander", word_translated: "Faire du charcutage électoral", language_requested: "en", language_translated: "fr", context_details: "The member spoke about previous fiscal arrangements like the Atlantic accord as being gerrymandered. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: politique.id)
political_party = Word.create!(word_requested: "Political Party", word_translated: "Parti politique", language_requested: "en", language_translated: "fr", context_details: "I asked him why I had to contribute money to a political party that I was campaigning against. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: politique.id)
leaflet = Word.create!(word_requested: "Leaflet", word_translated: "Brochure", language_requested: "en", language_translated: "fr", context_details: "We have produced a leaflet promoting our Program and its goals and objectives. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: politique.id)
poll = Word.create!(word_requested: "Poll", word_translated: "Sondage", language_requested: "en", language_translated: "fr", context_details: "If they bring proof of residence, can they go to the advance poll or to the polling station on the day of the election? ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: politique.id)
swing_vote = Word.create!(word_requested: "Swing Vote", word_translated: "Vote décisif", language_requested: "en", language_translated: "fr", context_details: "After three days of intense lobbying of Liberal MPs, who are the swing vote, signs started appearing that we were having an influence. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: politique.id)
gerrymander = Word.create!(word_requested: "Gerrymander", word_translated: "Faire du charcutage électoral", language_requested: "en", language_translated: "fr", context_details: "The member spoke about previous fiscal arrangements like the Atlantic accord as being gerrymandered. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: politique.id)
hustings = Word.create!(word_requested: "Hustings", word_translated: "Campagne électorale", language_requested: "en", language_translated: "fr", context_details: "Out on the hustings we will be able to tell people that the three opposition parties are soft on crime, that they do not [...] ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: politique.id)
landslide_victory = Word.create!(word_requested: "landslide victory", word_translated: "victoire écrasante", language_requested: "en", language_translated: "fr", context_details: "The landslide victory of the United Democratic Front in the April 1997 elections created the momentum for a long-awaited reform of economic policy. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: politique.id)
polling_day = Word.create!(word_requested: "Polling day", word_translated: "Jour des élections", language_requested: "en", language_translated: "fr", context_details: "No elector qualified to vote is bound to appear as a witness before a judge or court on polling day. ", progress: "Appris", favorite: "false", user_id: celine.id, category_id: politique.id)
framework = Word.create!(word_requested: "Framework", word_translated: "Cadre", language_requested: "en", language_translated: "fr", context_details: "How on earth can we implement a framework if we do not have the people on the ground who have the capacity to execute them? ", progress: "Nouveau", favorite: "false", user_id: paul.id, category_id: webdev.id)
database = Word.create!(word_requested: "Database", word_translated: "Base de données", language_requested: "en", language_translated: "fr", context_details: "The Agency will then include this information in a classification and labelling inventory in the form of a database accessible via internet. ", progress: "Nouveau", favorite: "false", user_id: paul.id, category_id: webdev.id)
server = Word.create!(word_requested: "Server", word_translated: "Serveur", language_requested: "en", language_translated: "fr", context_details: "The advantage is that the pages will not have to be transferred from the original server each time. ", progress: "En cours", favorite: "true", user_id: paul.id, category_id: webdev.id)
layout = Word.create!(word_requested: "Layout", word_translated: "Disposition", language_requested: "en", language_translated: "fr", context_details: " - The lever and buttons are designed and placed on same layout as the arcade style. ", progress: "En cours", favorite: "true", user_id: paul.id, category_id: webdev.id)
web_browser = Word.create!(word_requested: "Web browser", word_translated: "navigateur Web", language_requested: "en", language_translated: "fr", context_details: "NB: We advise you not to install two RSS extensions at the same time as this may cause conflicts which could block your web browser. ", progress: "En cours", favorite: "false", user_id: paul.id, category_id: webdev.id)
requests = Word.create!(word_requested: "Requests", word_translated: "demandes", language_requested: "en", language_translated: "fr", context_details: "Requests may be sent by mail, e-mail or online using our web request forms. ", progress: "Appris", favorite: "false", user_id: paul.id, category_id: webdev.id)
fixing_bugs = Word.create!(word_requested: "Fixing bugs", word_translated: "correction de bugs", language_requested: "en", language_translated: "fr", context_details: "There's always room for improvement. Whether it's boosting performance, adding new features or fixing bugs. ", progress: "Appris", favorite: "true", user_id: paul.id, category_id: webdev.id)
markup_language = Word.create!(word_requested: "Markup Language", word_translated: "Langage de balisage", language_requested: "en", language_translated: "fr", context_details: "A wiki is a website that allows users to easily add content to a series of linked web pages using simplified Web markup language. ", progress: "Nouveau", favorite: "false", user_id: paul.id, category_id: webdev.id)
compiling = Word.create!(word_requested: "Compiling", word_translated: "compiler", language_requested: "en", language_translated: "fr", context_details: "The process of compiling and analysing the control data for the purpose of the annual report may facilitate Member States [...] ", progress: "Nouveau", favorite: "false", user_id: paul.id, category_id: webdev.id)
operating_system = Word.create!(word_requested: "Operating system", word_translated: "Système opérateur", language_requested: "en", language_translated: "fr", context_details: "It has a fixed operating system, which has been customised for video games. ", progress: "En cours", favorite: "true", user_id: paul.id, category_id: webdev.id)
archaeologist = Word.create!(word_requested: "Archaeologist", word_translated: "archéologue", language_requested: "en", language_translated: "fr", context_details: "The archaeologist must also comply with provincial regulations concerning inventory methodology, site protection, artifact [...] ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: histoire.id)
chivalry = Word.create!(word_requested: "Chivalry", word_translated: "Chevalerie", language_requested: "en", language_translated: "fr", context_details: "Commenting on the chivalry that was sometimes displayed during the First World War, when soldiers of both sides would stop [...] ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: histoire.id)
collective_bargaining = Word.create!(word_requested: "Collective bargaining", word_translated: "La négociation collective", language_requested: "en", language_translated: "fr", context_details: "Pay equity is a fundamental human right and distinct from other issues in collective bargaining. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: histoire.id)
disarmament = Word.create!(word_requested: "Disarmament", word_translated: "Désarmement", language_requested: "en", language_translated: "fr", context_details: "We cannot disarm or report on disarmament of those that are already disarmed. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: histoire.id)
nation_state = Word.create!(word_requested: "Nation-state", word_translated: "État-nation", language_requested: "en", language_translated: "fr", context_details: "Are there other solutions that might be available to ensure that this nation state construct remains integral to that area, or does he believe [...] ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: histoire.id)
containment = Word.create!(word_requested: "Containment", word_translated: "Endiguement", language_requested: "en", language_translated: "fr", context_details: "Mr. Otto Langer: I think the one priority I would probably set is to get rid of open net cages and go to a closed containment system. ", progress: "En cours", favorite: "false", user_id: celine.id, category_id: histoire.id)
citizenship = Word.create!(word_requested: "Citizenship", word_translated: "Citoyenneté", language_requested: "en", language_translated: "fr", context_details: "I regret that these proposals have not been backed up with real figures and that the report has not placed more emphasis on access to citizenship. ", progress: "Appris", favorite: "false", user_id: celine.id, category_id: histoire.id)
civil_war = Word.create!(word_requested: "Civil War", word_translated: "Guerre civile", language_requested: "en", language_translated: "fr", context_details: "They have suffered through hostile occupations, civil war and oppression. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: histoire.id)
constituency = Word.create!(word_requested: "Constituency", word_translated: "Circonscription électorale", language_requested: "en", language_translated: "fr", context_details: "That is my constituency and those are the kinds of volunteers we have. ", progress: "Appris", favorite: "true", user_id: celine.id, category_id: histoire.id)
impeachment = Word.create!(word_requested: "Impeachment", word_translated: "Mise en accusation", language_requested: "en", language_translated: "fr", context_details: "A majority of two thirds of the votes of parliamentarians is required to initiate impeachment proceedings. ", progress: "Nouveau", favorite: "false", user_id: celine.id, category_id: histoire.id)

puts "Creating 3 Exercises..."
exercise1 = Exercise.create!(words_count: 10, score: 6, user_id: margot.id, category_id: finance.id)
exercise2 = Exercise.create!(words_count: 10, score: 8, user_id: celine.id, category_id: politique.id)
exercise3 = Exercise.create!(words_count: 10, score: 7, user_id: paul.id, category_id: webdev.id)

puts "Creating 30 Flashcards..."
flashcard1 = Flashcard.create!(exercise_id: exercise1.id, word_id: interest_rate.id)
flashcard2 = Flashcard.create!(exercise_id: exercise1.id, word_id: investment.id)
flashcard3 = Flashcard.create!(exercise_id: exercise1.id, word_id: cash_outflow.id)
flashcard4 = Flashcard.create!(exercise_id: exercise1.id, word_id: debt.id)
flashcard5 = Flashcard.create!(exercise_id: exercise1.id, word_id: mortgage.id)
flashcard6 = Flashcard.create!(exercise_id: exercise1.id, word_id: short_term_loan.id)
flashcard7 = Flashcard.create!(exercise_id: exercise1.id, word_id: overdraft.id)
flashcard8 = Flashcard.create!(exercise_id: exercise1.id, word_id: shares.id)
flashcard9 = Flashcard.create!(exercise_id: exercise1.id, word_id: bear_market.id)
flashcard10 = Flashcard.create!(exercise_id: exercise1.id, word_id: net_asset_value.id)
flashcard11 = Flashcard.create!(exercise_id: exercise2.id, word_id: filibuster.id)
flashcard12 = Flashcard.create!(exercise_id: exercise2.id, word_id: nominee.id)
flashcard13 = Flashcard.create!(exercise_id: exercise2.id, word_id: gerrymander.id)
flashcard14 = Flashcard.create!(exercise_id: exercise2.id, word_id: political_party.id)
flashcard15 = Flashcard.create!(exercise_id: exercise2.id, word_id: poll.id)
flashcard16 = Flashcard.create!(exercise_id: exercise2.id, word_id: swing_vote.id)
flashcard17 = Flashcard.create!(exercise_id: exercise2.id, word_id: gerrymander.id)
flashcard18 = Flashcard.create!(exercise_id: exercise2.id, word_id: hustings.id)
flashcard19 = Flashcard.create!(exercise_id: exercise2.id, word_id: landslide_victory.id)
flashcard20 = Flashcard.create!(exercise_id: exercise2.id, word_id: polling_day.id)
flashcard21 = Flashcard.create!(exercise_id: exercise3.id, word_id: framework.id)
flashcard22 = Flashcard.create!(exercise_id: exercise3.id, word_id: database.id)
flashcard23 = Flashcard.create!(exercise_id: exercise3.id, word_id: server.id)
flashcard24 = Flashcard.create!(exercise_id: exercise3.id, word_id: layout.id)
flashcard25 = Flashcard.create!(exercise_id: exercise3.id, word_id: web_browser.id)
flashcard26 = Flashcard.create!(exercise_id: exercise3.id, word_id: requests.id)
flashcard27 = Flashcard.create!(exercise_id: exercise3.id, word_id: fixing_bugs.id)
flashcard28 = Flashcard.create!(exercise_id: exercise3.id, word_id: markup_language.id)
flashcard29 = Flashcard.create!(exercise_id: exercise3.id, word_id: compiling.id)
flashcard30 = Flashcard.create!(exercise_id: exercise3.id, word_id: operating_system.id)

puts "Finished!"