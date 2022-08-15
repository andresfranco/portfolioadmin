class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :knowledge_area, foreign_key: true
    add_reference :skills, :category, foreign_key: true
  end
end
