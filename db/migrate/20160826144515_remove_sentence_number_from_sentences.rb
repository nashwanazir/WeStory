class RemoveSentenceNumberFromSentences < ActiveRecord::Migration[5.0]
  def change
    remove_column :sentences, :sentence_number, :int
  end
end
