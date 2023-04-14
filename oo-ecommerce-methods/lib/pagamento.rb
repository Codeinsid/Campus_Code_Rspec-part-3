class Pagamento
  attr_reader :produto, :quantidade, :valor

  def initialize(produto:, quantidade:)
    @produto = produto
    @quantidade = quantidade
    @valor = 0
  end

  def calcular_valor
    @valor = @quantidade * @produto.preco
    @produto.estoque -= @quantidade
  end

  def aplicar_desconto(desconto)
    @valor *= (1 - desconto / 100.0)
  end
end

Este é um código que define uma classe Pagamento, que tem três 
métodos: initialize, calcular_valor e aplicar_desconto. A classe tem dois atributos de 
leitura: produto e quantidade, que são passados para o construtor através de um hash com parâmetros nomeados.
 O terceiro atributo de leitura é valor, que é inicializado com zero no construtor.
O método calcular_valor multiplica a quantidade pelo preço do produto e armazena o resultado em valor. 
  Também subtrai a quantidade do estoque do produto.
O método aplicar_desconto recebe uma porcentagem de desconto e reduz o valor total do pagamento de acordo.
