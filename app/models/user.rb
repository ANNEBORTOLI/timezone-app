class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :connections
  has_many :contacts, through: :connections, source: :user, foreign_key: :contact_id
  has_many :groups
  has_many :messages

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, :city, :country, presence: true
  validates :phone, length: { maximum: 15 }

  private

  def all_contacts
    connections.map { |connection| connection.contact }
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def working_hours_validity
    if working_hour_start.present? && working_hour_end.present? && working_hour_start >= working_hour_end
      errors.add(:working_hour_start, "must be before working_hour_end")
    end
  end
end
