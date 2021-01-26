class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient

      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
