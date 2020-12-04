my_names <- function (dataset, names){
  dataset[grepl(paste(names, collapse = "|"), dataset$name),]
}