class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presence: true
  validates :user, presence: true
  validates :group, presence: true
end
