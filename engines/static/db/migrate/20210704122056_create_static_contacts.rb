class CreateStaticContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :static_contacts do |t|
      t.string :title
      t.text :description
      t.number :phonenumber
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
