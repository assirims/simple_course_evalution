class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :lecturelevel
      t.string :valuelevel
      t.text :easypoint
      t.text :hardpoint
      t.text :notes
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :reviews, :slug, unique: true
  end
end
