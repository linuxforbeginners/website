class Comment < ApplicationRecord
  include Visible

  validates :commenter, presence: true, length: { minimum: 1 }
  validates :body, presence: true, length: { minimum: 1 }

  belongs_to :article
end
