class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  validates :markup_key, uniqueness: true
  validate :markup_key_presence
  validates :username, presence: true
  validates :contact_number, presence: true
  validates :city, presence: true

  belongs_to :markupkey, foreign_key: 'markup_key'

  private

  def markup_key_presence
    key = Markupkey.find_by(markup_key: markup_key)

    errors.add(:markup_key, 'is invalid') unless key
  end
end
