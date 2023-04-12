# problema amb el supertitle a l'hora de crear la base de dades

class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  attribute :secondtitle, optional: true
  attribute :supertitle, optional: true


  attribute :important, :boolean, default: false
# attribute :thumbnail_photo, :boolean, default: false


  has_many_attached :photos

end
