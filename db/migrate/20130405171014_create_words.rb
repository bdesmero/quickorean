class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :translation
      t.text :example_english
      t.text :example_korean

      t.timestamps
    end
  end
end
