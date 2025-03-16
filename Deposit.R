##########################
#此script負責存入金錢
##########################

deposit <- function(){
  ##先找到目前金額
  file_path <- file.path(getwd(), "file", "money.txt")
  ##讀取Money.txt
  data <- read.table(file = file_path)
  current_money <- as.numeric(data[1,1])
  cat("#################################","\n")
  cat("#################################","\n")
  cat("current money:",current_money,"\n")
  
  # 設定避免使用科學記號
  options(scipen = 999)
  ##輸入存入的金額
  choice <- as.numeric(readline(prompt = "money to deposit:"))
  ##
  new_money <-as.numeric(choice)+current_money
  cat("successfully deposit, your current money is: ",as.character(new_money),"\n")
  ###更新檔案內數字
  writeLines(as.character(new_money),file_path)
  
}
deposit()
