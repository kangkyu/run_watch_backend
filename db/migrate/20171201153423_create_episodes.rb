class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end
