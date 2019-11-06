class Persona < ApplicationRecord
  before_save :delete_foto, if: -> {foto_del == '1'}

  attr_accessor :foto_del

  validates_presnece_of :nombre
  validates_presence_of :indice

  protected

  def delete_foto
    self.foto = nil
  end
end
