class CreateBouquets < ActiveRecord::Migration[5.1]
  def change
    create_table :bouquets do |t|
      t.string :word1
      t.string :word2
      t.string :word3

      t.timestamps
    end
  end
end
