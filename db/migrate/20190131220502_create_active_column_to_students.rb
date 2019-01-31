class CreateActiveColumnToStudents < ActiveRecord::Migration
  def change
    create_table :active_column_to_students do |t|
      add_column :students, :active, :boolean, default: false
    end
  end
end
