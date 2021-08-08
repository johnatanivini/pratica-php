select CONCAT(u.nome,' - ',genero) as usuario, 
(
  CASE WHEN EXTRACT(YEAR FROM NOW()) - i.ano_nascimento > 50 THEN "SIM" ELSE "NÃO" END
) as maior_50_anos

 from USUARIO u 
INNER JOIN INFO i ON u.cpf=i.CPF