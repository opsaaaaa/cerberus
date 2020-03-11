class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.jsonb :content, null: true

      t.bigint :template_id

      t.timestamps
    end
  end
end
