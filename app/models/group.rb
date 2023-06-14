class Group < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20, too_long: "%{count} characters is the maximum allowed" }
  validate :user_not_included_in_contacts

  private

  def user_not_included_in_contacts
    errors.add(:base, "User already in group") if contact_ids.include?(user_id)
  end
end
