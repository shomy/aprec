class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :company
      t.string :tantou
      t.string :kigyoutantou
      t.string :tel
      t.text :comment
      t.string :address
      t.boolean :active
      t.references :user, foreign_key: true
      t.integer :bo
      t.integer :yusendo
      t.string :syokusyu

      t.timestamps
    end
  end
end
