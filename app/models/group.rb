class Group < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validate :user_not_included_in_contacts

  private

  def user_not_included_in_contacts
    errors.add(:base, "User already in group") if contact_ids.include?(user_id)
  end
end
