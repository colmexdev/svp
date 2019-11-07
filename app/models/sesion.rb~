class Sesion < ApplicationRecord
  before_save :empty_pubs, if: -> {pubs_changed? && pubs.nil?}

  protected

  def empty_pubs
    self.pubs = nil
  end
end
