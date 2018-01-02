class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  default_scope -> { order(date: :desc) }
end
