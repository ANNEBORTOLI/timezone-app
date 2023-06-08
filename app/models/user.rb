class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :connections
  has_many :contacts, through: :connections, source: :user, foreign_key: :contact_id
  has_many :groups
  has_many :messages

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, :address, presence: true
  validates :phone, length: { maximum: 15 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  before_save :set_timezone

  def set_timezone
    # timezone = Timezone.lookup(-34.92771808058, 138.477041423321)
    # #<Timezone::Zone name: "Australia/Adelaide">
    timezone = Timezone.lookup(latitude, longitude)
    raise
    # timezone.name
    # #"Australia/Adelaide"

    # timezone.utc_to_local(Time.now)
    # #2011-02-12 12:02:13 UTC
  end

  def all_contacts
    connections.map(&:contact) # connections.map { |connection| connection.contact }
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
