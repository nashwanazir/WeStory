class AddSentenceNumberToSentence < ActiveRecord::Migration[5.0]
  def change
    add_column :sentences, :sentence_number, :int
  end
end
