class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :section_id
      t.string :title
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
