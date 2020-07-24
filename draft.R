library(readxl)
library(dplyr)

data.path <- 'original_data.xlsx'
df1 <- read_xlsx(data.path, sheet = "Списки избирателей 1917")
df2 <- read_xlsx(data.path, sheet = "МК Верхотомского 1843")
df3 <- read_xlsx(data.path, sheet = "Верхотомская волость")
df4 <- read_xlsx(data.path, sheet = "Sheet2")
df5 <- read_xlsx(data.path, sheet = "География")
df6 <- read_xlsx(data.path, sheet = "Фамилии")

# df2 work
colnames(df2) <- c(
  'Рождение День',
  'Рождение Месяц',
  'Рождение Год',
  'Обряд День',
  'Обряд Месяц',
  'Обряд Год',
  'Волость',
  'Место',
  'Род занятий',
  'Имя',
  'Отчество',
  'Фамилия',
  'Статус',
  'Возраст',
  'Комментарии'
)
df2 <- df2[-c(1),]

# df3
colnames(df3) <- c(
  "Рождение День",
  "Рождение Месяц",
  "Рождение Год",
  "Обряд День",
  "Обряд Месяц",
  "Обряд Год",
  "Волость",
  "Место",
  "Род занятий",
  "Имя",
  "Отчество",
  "Фамилия",
  "Статус",
  "Возраст",
  "Комментарии",
  "NA"
)
df3 <- df3[-c(1),]

# df4
