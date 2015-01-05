class CreateTaggins < ActiveRecord::Migration
  def change
    create_table :taggins do |t|
      t.references :tag, index: true
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :taggins, :tags
    add_foreign_key :taggins, :articles
  end
end
