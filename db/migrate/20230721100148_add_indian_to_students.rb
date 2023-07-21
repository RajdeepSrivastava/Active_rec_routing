class AddIndianToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :indian, :string
  end
end
