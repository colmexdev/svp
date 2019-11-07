class Sesion < ApplicationRecord
  before_save :empty_pubs, if: -> {!params[:sesion][:pubs]}

  protected

  def empty_pubs
    self.pubs = nil
  end
end
