class CreateCompanyregs < ActiveRecord::Migration[6.0]
  def change
    create_table :companyregs do |t|
      t.integer :companyid
      t.string :companyname
      t.integer :testid
      t.string :testname
      t.timestamps :createdat
      t.string :updatedat
      t.timestamps :updatedat

      t.timestamps
    end
  end
end
