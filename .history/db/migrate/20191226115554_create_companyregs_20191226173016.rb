class CreateCompanyregs < ActiveRecord::Migration[6.0]
  def change
    create_table :companyregs do |t|
      t.string :companyid
      t.integer :companyid
      t.string :companyname
      t.string :companyname
      t.string :testid
      t.integer :testid
      t.string :testname
      t.string :testname
      t.string :createdat
      t.timestamps :createdat
      t.string :updatedat
      t.timestamps :upadet

      t.timestamps
    end
  end
end
