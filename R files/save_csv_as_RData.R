#get csv and turn it into RData file so github will accept it

#get wd
wd <- dirname(dirname(rstudioapi::getSourceEditorContext()$path))
#set wd to Data folder
dwd <- paste0(wd, "/Data")

#read in csv files
csv_file <- paste0(dwd, "/", "pbdb_data_0226.csv")
mollusca <- read.csv(csv_file, skip = 20)

path <- paste0(dwd, "/pbdb_mollusca.RData")
save(mollusca, file = path)

try(rm(csv_file, path))
