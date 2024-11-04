-- Arredonda o número 3.4 com duas casas decimais (embora não afete o número, pois ele já possui apenas uma casa)
SELECT ROUND(3.4, 2);

-- Arredonda o número 3.433 para duas casas decimais, resultando em 3.43
SELECT ROUND(3.433, 2);

-- Arredonda 3.437 para duas casas decimais, resultando em 3.44, e 3.433 para duas casas decimais, resultando em 3.43
SELECT ROUND(3.437, 2), ROUND(3.433, 2);

-- Arredonda o número 3.433 para o próximo número inteiro superior, resultando em 4
SELECT CEILING(3.433);

-- Arredonda o número 3.433 para o número inteiro inferior, resultando em 3
SELECT FLOOR(3.433);

-- Calcula o valor de 12 elevado à potência de 2 (12^2), resultando em 144
SELECT POWER(12, 2);

-- Calcula o valor da constante e elevado à potência de 3 (aproximadamente 20.0855)
SELECT EXP(3);

-- Calcula a raiz quadrada de 300, resultando em aproximadamente 17.32
SELECT SQRT(300);

-- Retorna o valor absoluto de 10 (10) e de -10 (10), ambos como valores positivos
SELECT ABS(10), ABS(-10);
