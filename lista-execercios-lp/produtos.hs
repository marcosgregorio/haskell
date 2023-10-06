data FormaCom = Un | Peso
 deriving Show

 data Produto = Perecivel Int String Int Bool FormaCom
  | NaoPerecivel Int String String Int FormaCom
  deriving Show

  prod1 = Perecivel 1 "Carne Moida" 2022 True Un
  prod2 = NaoPerecivel 2 "Sal" "Sal Marinho" 2021 Peso




