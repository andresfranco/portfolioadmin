class AddForeingKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :knowledge_areas ,column: :id
    add_foreign_key :skills, :categories ,column: :id

  end
end
