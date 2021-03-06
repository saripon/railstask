class TodotaskController < ApplicationController

  def index
    @msg = 'データ一覧'
    @todotask = Todotask.all
  end

  def new
    @todotask = Todotask.new
  end

  def create
      @todotask = Todotask.new    
      @todotask.save
      redirect_to("/todotask/index")
  end
      
  
  def delete
    obj = Todotask.find(params[:id])
    obj.destroy
    redirect_to '/todotask'
  end

    def edit
      @msg = "edit data.[id = " + params[:id] + "]"
      @todotask = Todotask.find(params[:id])
    end
    
    
    def update
      obj = Todotask.find(params[:id])
      obj.update(todotask_params)
      redirect_to '/todotask'
    end


  def show 
  @msg = "データ表示"
  @data = Todotask.find(params[:id])
  puts @data
  end



private


  def todotask_params
    params.require(:todotask).permit(:title,:content)
  end

end