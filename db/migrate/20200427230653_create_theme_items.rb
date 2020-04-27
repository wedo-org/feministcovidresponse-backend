class CreateThemeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :theme_items do |t|
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
