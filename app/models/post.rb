# problema amb el supertitle a l'hora de crear la base de dades

class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  # attribute :secondtitle, :supertitle, optional: true
  attribute :important, :boolean, default: false


end
