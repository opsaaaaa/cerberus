class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.jsonb :content, null: true
      
      t.jsonb :rules, null: true

      t.bigint :show_id
      t.bigint :form_id

      t.timestamps
    end
  end
end
