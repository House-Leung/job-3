class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :jobs

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
