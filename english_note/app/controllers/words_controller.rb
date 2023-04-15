class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.user = current_user

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Word was successfully created.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @word.errors, status: :unprocessable_entity }
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
      params.require(:word).permit(:name, :word_class).tap do |params|
        params[:word_class] = params[:word_class].to_i
      end
    end
end
