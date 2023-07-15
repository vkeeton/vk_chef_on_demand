class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :service_date
      t.integer :meals_quantity
      t.text :user_comment
      t.boolean :cook_at_home
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
