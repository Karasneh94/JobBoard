class CreateJobapplications < ActiveRecord::Migration[6.0]
  def change
    create_table :jobapplications do |t|
      t.string :job_id
      t.string :job_title
      t.string :user_id
      t.string :email
      t.string :contact_number
      t.boolean :seen

      t.timestamps
    end
  end
end
