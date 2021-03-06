class UsersController < ApplicationController
  skip_before_action :authorize, only: [:new, :create] #skip all method except new e create

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.uid = Digest::MD5.hexdigest(@user.email)
    @user.provider = "Email Registration"
    @user.image_url = "https://cdn3.iconfinder.com/data/icons/rcons-user-action/32/boy-512.png"

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        #redirect_to welcome_index_url, alert: "Welcome!"
        format.html { redirect_to welcome_index_url }
        #format.json { render :show, status: :created, location: @user }
      else
        #redirect_to home_index_url
        format.html { redirect_to home_index_url, notice: "Error: this user could'd be alrady created." }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
