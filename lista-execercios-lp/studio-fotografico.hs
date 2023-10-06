valorTabelaRetratos :: Integer -> Double
valorTabelaRetratos qtdPessoas
  | qtdPessoas == 1 = 100
  | qtdPessoas == 2 = 130
  | qtdPessoas == 3 = 150
  | qtdPessoas == 4 = 165
  | qtdPessoas == 5 = 175
  | qtdPessoas == 6 = 180
  | qtdPessoas >= 7 = 185
  | otherwise = 1

devolveValorDiaria :: String -> Double
devolveValorDiaria diaDaSemana
  | diaDaSemana == "sabado" || diaDaSemana == "domingo" = 1.2
  | otherwise = 1

precoRetrato :: Integer -> String -> Double
precoRetrato qtdPessoas diaDaSemana = valorTabelaRetratos(qtdPessoas) * devolveValorDiaria(diaDaSemana)
