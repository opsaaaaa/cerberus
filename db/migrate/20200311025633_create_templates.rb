class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :body
      t.jsonb :keys, null: true
      t.text :vue_cache, null: true
      
      t.timestamps
    end
  end
end
