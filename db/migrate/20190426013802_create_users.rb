class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :grade
      t.string :goal
      t.string :subject
      t.boolean :learning_disability, default: false
      t.string :learning_disability_type
      t.integer :experience
      t.string :education
      t.integer :price_per_hr
      t.string :specialty
      t.integer :hires
      t.float :rating
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
