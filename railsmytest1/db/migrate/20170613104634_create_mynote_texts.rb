class CreateMynoteTexts < ActiveRecord::Migration
  def change
    create_table :mynote_texts do |t|
      t.text :keyword1
      t.text :keyword2

      t.timestamps null: false
    end
  end
end
