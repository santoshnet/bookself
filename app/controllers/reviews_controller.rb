class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_book
  def new
    @review = Review.new
  end

 def create
  
   @review  = Review.create(params_review)

     @review.book_id = @book.id
     @review.user_id = current_user.id       



   if @review.save

    

   	 redirect_to book_path(@book)
   end
 end  

 def update
   if  @review.update(preview_params) 
   	redirect_to book_path(@book)
   end
 end

  def destroy
    @review.destroy
    redirect_to book_path(@book)
  end




 private

   

  def params_review
    params.require(:review).permit(:rating, :comment)
  end
   
   def find_book
      @book = Book.find(params[:book_id])
   end 

   def find_review
    @review = Review.find(params[:book_id])  
   end

end
