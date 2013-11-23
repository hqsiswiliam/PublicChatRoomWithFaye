class PublicMessagesController < ApplicationController
  before_action :set_public_message, only: [:show, :edit, :update, :destroy]

  # GET /public_messages
  # GET /public_messages.json
  def index
    @public_messages = PublicMessage.all
  end

  # GET /public_messages/1
  # GET /public_messages/1.json
  def show
  end

  # GET /public_messages/new
  def new
    @public_message = PublicMessage.new
  end

  # GET /public_messages/1/edit
  def edit
  end

  # POST /public_messages
  # POST /public_messages.json
  def create
    @public_message = PublicMessage.new(public_message_params)

    respond_to do |format|
      if @public_message.save
        format.html { redirect_to @public_message, notice: 'Public message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @public_message }
      else
        format.html { render action: 'new' }
        format.json { render json: @public_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_messages/1
  # PATCH/PUT /public_messages/1.json
  def update
    respond_to do |format|
      if @public_message.update(public_message_params)
        format.html { redirect_to @public_message, notice: 'Public message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @public_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_messages/1
  # DELETE /public_messages/1.json
  def destroy
    @public_message.destroy
    respond_to do |format|
      format.html { redirect_to public_messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_message
      @public_message = PublicMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_message_params
      params.require(:public_message).permit(:email, :public_message)
    end
end
