class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome: 'Sem nome', categoria: Categoria.new(nome: 'Geral'), preco: 0, estoque: 0)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end


Este é um código de uma classe Produto que define um objeto de produto com um nome, categoria, preço e estoque.
 Ele também possui métodos para adicionar e remover estoque.
Os atributos do produto podem ser acessados e modificados diretamente de fora da classe,
   pois os atributos são definidos como attr_accessor.
No construtor da classe, um nome padrão "Sem nome" e uma categoria padrão "Geral" são fornecidos se não forem fornecidos argumentos.
 O preço e o estoque também podem ser especificados no construtor.