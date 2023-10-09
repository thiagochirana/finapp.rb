class CreateGastos < ActiveRecord::Migration[7.0]
  def change
    create_table :gastos do |t|
      t.integer :dia_registro
      t.integer :mes_regsitro
      t.integer :ano_registro
      t.integer :hora
      t.integer :min
      t.string :descricao
      t.float :valor
      t.string :forma_pgto

      t.timestamps
    end
  end
end
