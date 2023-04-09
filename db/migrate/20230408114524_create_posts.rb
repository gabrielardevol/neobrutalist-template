class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :secondtitle
      t.string :supertitle

      t.boolean :important, default: false

      t.text :body
      t.timestamps
    end
  end
end
