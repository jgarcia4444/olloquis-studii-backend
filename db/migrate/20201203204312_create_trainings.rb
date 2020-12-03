class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :ffirst_name
      t.string :last_name
      t.string :email
      t.boolean :licensed
      t.string :training_name

      t.timestamps
    end
  end
end
