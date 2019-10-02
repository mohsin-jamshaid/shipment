class Markupkey < ApplicationRecord
  self.primary_key = 'markup_key'

  has_one :client, foreign_key: 'markup_key', dependent: :nullify

  before_validation :capitalize_markup_key, on: %i[create update]

  validates :markup_key, presence: true, uniqueness: true

  private

  def capitalize_markup_key
    markup_key&.upcase!
  end
end
