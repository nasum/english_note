class WordsController < ApplicationController
  def index
    @words = Word.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @word = Forms::Word.new
  end

  def create
    ActiveRecord::Base.transaction do
      @form_word = Forms::Word.new(word_params)
      @form_word.user = current_user
      @form_word.study_event = StudyEvent.create(user: current_user, study_event_type: :word)

      respond_to do |format|
        if @form_word.save
          format.html { redirect_to @form_word.word, notice: 'Word was successfully created.' }
          format.json { render :show, status: :created, location: @word }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @form_word.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def show
    @word = Word.find(params[:id])
  end

  def edit
    @word = Word.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  private

  def set_word
    @user = Word.find(params[:id])
  end

  def word_params
    params.require(:forms_word).permit(:name, :word_class, word_means: {}).tap do |params|
      params[:word_class] = params[:word_class].to_i
      params[:word_means] = params[:word_means].values
    end
  end
end
