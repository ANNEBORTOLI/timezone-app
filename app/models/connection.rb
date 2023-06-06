class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact, class_name: 'User'

  validate :different_user_and_contact

  private

  def different_user_and_contact
    errors.add(:base, "User and contact must be different") if user_id == contact_id
  end
end
