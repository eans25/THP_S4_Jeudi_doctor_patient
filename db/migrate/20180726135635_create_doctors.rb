class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :speciality
    	t.integer :postal_code
    end
  end
end
