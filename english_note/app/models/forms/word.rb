class Forms::Word
  include ActiveModel::Model
  include ActiveModel::Attributes

  attr_accessor :user, :study_event, :name, :word_class, :word_means, :word

  validates :name, presence: true
  validates :word_class, presence: true, inclusion: { in: Word::WORD_CLASS.keys.map(&:to_s) }
  validates :study_event_id, presence: true

  def initialize(*args)
    super(*args)
    self.word_means ||= [""]
  end

  def save
    ActiveRecord::Base.transaction do
      @word = Word.create!(
        user: user,
        study_event: study_event,
        name: name,
        word_class: word_class
      )

      word_means.each do |word_mean|
        WordMean.create!(
          word: word,
          description: word_mean
        )
      end
    end
  end
end
