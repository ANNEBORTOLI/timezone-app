class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  #validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
