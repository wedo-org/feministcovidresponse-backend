
TypeItem.destroy_all
Category.destroy_all
Type.destroy_all
Theme.destroy_all
User.destroy_all
Item.destroy_all
Progressive.destroy_all


Item.reset_pk_sequence
TypeItem.reset_pk_sequence
Progressive.reset_pk_sequence
Category.reset_pk_sequence
Type.reset_pk_sequence
Theme.reset_pk_sequence
User.reset_pk_sequence



############# CATEGORIES ############# 
categories = ["response-tracker", "online-dialogues", "resources"]
categories.each{|c| Category.create!(name: c)}

puts "cat done"

############# TYPES ############# 
types = ["observed response", "temporary measure", "policy or law"]
types.each{|t| Type.create!(name: t)}

puts "types done"


############# THEMES ############# 
themes = ["punitive", "digital surveillance", "healthcare", "education", "economy", "childcare", "labor", "food", "gendered health impacts", "gender-based violence","disability", "race", "misinformation"]
themes.each{|t| Theme.create!(name: t)}

puts "themes done"

############## PROGRESSIVES ###########
prog = ["progressive", "regressive", "need to watch"]
prog.each{|p| Progressive.create!(name: p)}

puts "prog done"


############### USERS ###############
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com", password_digest: "Annie2020")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com", password_digest: "Sylwia2020")

puts "users done"


############### ITEMS ###############
firstItem = Item.create!(title: "test", description: "desc", link: "link", date:50920, progressive_id:Progressive.all[0].id)

secondItem = Item.create!(title: "test2", description: "desc2", link: "link2", date:50920, progressive_id:Progressive.all[1].id)

puts "items done"


############### TYPE_ITEMS ###############
firstTI = TypeItem.create!(type_id: Type.all[0].id, item_id: firstItem.id )

secondTI = TypeItem.create!(type_id: Type.all[1].id, item_id: firstItem.id )

puts "type items done"
