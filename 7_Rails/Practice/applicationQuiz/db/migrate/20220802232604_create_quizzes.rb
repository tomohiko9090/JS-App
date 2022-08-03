class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :type
      t.string :question
      t.string :answer
      t.string :lebel

      t.timestamps
    end
  end
end
