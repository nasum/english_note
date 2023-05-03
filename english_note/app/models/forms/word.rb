class Forms::Word
  include ActiveModel::Model
  include ActiveModel::Attributes

  attr_accessor :user, :study_event, :name, :word_class, :word_means, :word

  validates :name, presence: true
  validates :word_class, presence: true, inclusion: { in: Word::WORD_CLASS.keys.map(&:to_s) }

  def initialize(*args)
    super(*args)
    self.word_means ||= [""]
  end

  def save
    return false unless valid?

    begin
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
    rescue => e
      @word.errors.each do |attr, error|
        errors.add(attr, error)
      end
      puts "hoge"
      puts errors
      false
    end
  end

  def self.find(id)
    @word = Word.find(id)
    Forms::Word.new(
      word: @word,
      name: @word.name,
      word_class: @word.word_class,
      word_means: @word.word_means.map(&:description)
    )
  end
end
