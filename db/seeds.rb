Category.destroy_all
Type.destroy_all
Theme.destroy_all
Progressive.destroy_all
User.destroy_all

Category.reset_pk_sequence
Type.reset_pk_sequence
Theme.reset_pk_sequence
Progressive.reset_pk_sequence
User.reset_pk_sequence


############# CATEGORIES ############# 
categories = ["response-tracker", "online-dialogues", "resources"]
categories.each{|c| Category.create!(name: c)}

############# TYPES ############# 
types = ["observed response", "temporary measure", "policy or law"]
types.each{|t| Type.create!(name: t)}

############# THEMES ############# 
themes = ["punitive", "digital surveillance", "healthcare", "education", "economy", "childcare", "labor", "food", "gendered health impacts", "gender-based violence","disability", "race", "misinformation"]
themes.each{|t| Theme.create!(name: t)}

############## PROGRESSIVES ###########
prog = ["progressive", "regressive", "need to watch"]
prog.each{|p| Progressive.create!(name: p)}


############### USERS ###############
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com", password_digest: "Annie2020")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com", password_digest: "Sylwia2020")
