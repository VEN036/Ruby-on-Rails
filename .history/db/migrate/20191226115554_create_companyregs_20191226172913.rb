class CreateCompanyregs < ActiveRecord::Migration[6.0]
  def change
    create_table :companyregs do |t|
      t.string :companyid
      t.integer :
      t.string :companyname
      t.string :
      t.string :testid
      t.integer :
      t.string :testname
      t.string :
      t.string :createdat
      t.timestamps :
      t.string :updatedat
      t.timestamp :

      t.timestamps
    end
  end
end
