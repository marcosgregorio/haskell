data Cliente = OrgGov String
  | Empresa String Integer String String
  | Individuo String String Bool

  data Pessoa = Pessoa String String
    deriving Show

  -- Soma
natAdd:: Nat -> Nat -> Nat -- Soma 2 parametros e devolve o ultimo valor

