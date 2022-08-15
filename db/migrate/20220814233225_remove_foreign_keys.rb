class RemoveForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :categories, :knowledge_areas ,column: :id
    remove_foreign_key :skills, :categories ,column: :id
  end
end
