class WordsController < DashboardController
  
  def index
    @words = Word.all
  end


  def new
    @word = Word.new
  end


  def create
    @word = Word.new params[:word]

    if @word.save
      redirect_to @word
    else
      render :new
    end
  end


  def edit
    @word = Word.find params[:id]
  end


  def update
    @word = Word.find params[:id]

    if @word.update_attributes params[:word]
      redirect_to @word
    else
      render :edit
    end
  end


  def show
    @word = Word.find params[:id]
  end


  def destroy
    word = Word.find params[:id]
    word.destroy

    redirect_to words_path
  end  
end
