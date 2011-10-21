class Pedido < ActiveRecord::Base
  has_many :itens
  has_many :prosutos, :throug => :itens
end