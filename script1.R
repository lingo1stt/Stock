
################# file creation #######################
#1. 首先建立 買入.csv 包含3個Input(買入股票代號、買入日期、當時股價、張數)
code = "0050"
date = "05/27/25"
price = 37.5
amount = 3

menu_function <- function() {
  cat("請輸入數字選擇功能 (1-4):\n")
  cat("1: Deposit(存錢) \n")
  cat("2: Withdrawl (提錢) \n")
  cat("3: Buy (買入) \n")
  cat("4: Sell (賣出) \n")
  #
  choice <- as.integer(readline(prompt = "選擇功能(1-4): " ))
  
  if (is.na(choice) || !(choice %in% 1:5) ){
    cat("輸入錯誤，請輸入 1-5 之間的數字。\n")
  }else{
    switch(choice,
           source("Deposit.R"),
           source("Withdrawl.R"),
           source("Buy.R"),
           source("Sell.R"))
  }
}
menu_function()

