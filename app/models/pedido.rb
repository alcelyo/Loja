class Pedido < ActiveRecord::Base
  has_many :itens
  has_many :produtos, :through => :itens

  def adicionar_produto(produto, quantidade)
    if item = self.itens.detect { |item| item.produto == produto }
      item.incrementar_quantidade(quantidade)
      item.save
    else
      self.itens.create(
          :produto_id => produto.id,
          :quantidade => quantidade)

    end
  end

  def preco_total
    self.itens.inject(0) do |acumulado, item|
      acumulado + item.preco_total
    end

  end

end