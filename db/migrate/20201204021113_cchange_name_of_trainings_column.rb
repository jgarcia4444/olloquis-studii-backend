class CchangeNameOfTrainingsColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :trainings, :ffirst_name, :first_name
  end
end
