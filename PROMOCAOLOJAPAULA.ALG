Algoritmo " PromocaoLoja"

//Ex: uma loja de conveniência decidiu fazer uma promoção para seus clientes.
//Para isso é necessário cadastrar os clientes, de um determinado dia de venda
//Entradas: - QTD de cliente, e ano
// Calculos e processamento : iniciar uma estrutura de repetição para cada
// cliente como: Nome, ano de nascimento, valor gasto, gastou mais com:
// (B)bebidas, (D) Doces e (S)Salgados
// calcular a idade com= idade := ano atual - ano de nascimento
// total idade := total idade + idade
// total gasto := total gasto + valor gasto
// acumular gasto maior com:
// bebidas, doces e salgados
// no final calcular a média das idades e a média dos gastos
// media de gasto := total gasto / total de clientes

Var

   contador, qtd_cliente, ano_atual, ano_nascimento, idade, total_idade : inteiro
   total_salgado, total_doce, total_bebida : real
   nome, op : caractere
   valor_gasto, media_gasto, media_idade, total_gasto : real

Inicio

   escreval("Quantos clientes tiveram no dia?")
   leia(qtd_cliente)
   escreval("Digite o ano vigente")
   leia(ano_atual)

   para contador de 1 ate qtd_cliente faca
      limpatela
      escreval("Digite o nome do cliente")
      leia(nome)
      escreval("Digite o ano de nascimento")
      leia(ano_nascimento)
      escreval("Qual o valor gasto?")
      leia(valor_gasto)
      //menu
      escreval("Digite a opção mais comprada por ", nome)
      escreval("S - Salgado")
      escreval("D - Doce")
      escreval("B - Bebida")
      leia(op)

      idade := ano_atual - ano_nascimento
      total_idade := total_idade + idade
      total_gasto := total_gasto + valor_gasto

      se(maiusc(op) = "S") entao
         total_salgado := valor_gasto + total_salgado
      senao
         se(maiusc(op) = "D")entao
            total_doce := valor_gasto + total_doce
         senao
            se(maiusc(op) = "B")entao
               total_bebida := valor_gasto + total_bebida
            senao
               escreval("Digite uma opção correta!")
            fimse
         fimse
      fimse
   fimpara

   media_idade := ( total_idade / qtd_cliente )
   media_gasto := ( total_gasto / qtd_cliente )

   se (total_salgado > total_doce) e (total_salgado > total_bebida) entao
      escreval ("O salgado foi o mais vendido, com total de:", total_salgado)
   senao
      se(total_doce > total_salgado) e (total_doce > total_bebida) entao
         escreval ("O doce foi o mais vendido, com total de:", total_doce)
      senao
         escreval("A bebida foi a mais vendida, com total de:", total_bebida)
      fimse
   fimse

   // calculos

   escreval("Media idade:", media_idade)
   escreval("Media gasto:", media_gasto)
   escreval("Total Gasto:", total_gasto)


Fimalgoritmo