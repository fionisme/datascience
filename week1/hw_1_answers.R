### hw_1_question


########################################################### Task 1

# 查看內建資料集: 鳶尾花(iris)資料集
View(iris)

# 使用dim(), 回傳iris的列數與欄數
dim(iris)

# 使用head() 回傳iris的前六列
head(iris)

# 使用tail() 回傳iris的後六列
tail(iris)

# 使用str() 
str(iris)

# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)

########################################################### Task 2

# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)

for( i in 1:9 ) {
  for ( j in 1:9) {
    print(paste0(i,"x" , j , "=" , i * j))
  }
}

########################################################### Task 3

# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums <- sample (x = 10:100, 10)

# 查看nums
View(nums)

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。

for ( p in nums) {
  if( p > 50 & p %% 2 == 0){
    print(paste("偶數且大於50:", p))
  }
  if ( p == 66){
    print("太66666666666了")
    break
  }
}


########################################################### Task 4

# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年
year <- 1500

for ( i in year) {
  if( i %% 4 == 0 & year %% 100 != 0){
    print("The Lunar Year!")
  }
  else if( year %% 400 == 0 ){
    print("The Lunar Year!")
  }
  else{
    print("The Average Year!")
  }
}


########################################################### Task 5

# 猜數字遊戲
# 1. 請寫一個由電腦隨機產生不同數字的四位數(1A2B遊戲)
# 2. 玩家可重覆猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數

sample(0:9, 4)

Guessnum <- readline(prompt="Guess A Number: ")
