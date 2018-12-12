class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :district

      t.timestamps
    end
  end
end