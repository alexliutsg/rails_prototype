class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @participants = Participant.all
    respond_with(@participants)
  end

  def show
    respond_with(@participant)
  end

  def new
    @participant = Participant.new
    respond_with(@participant)
  end

  def edit
  end

  def create
    @participant = Participant.new(participant_params)
    @participant.save
    respond_with(@participant)
  end

  def update
    @participant.update(participant_params)
    respond_with(@participant)
  end

  def destroy
    @participant.destroy
    respond_with(@participant)
  end

  private
    def set_participant
      @participant = Participant.find(params[:id])
    end

    def participant_params
      params.require(:participant).permit(:school_id, :name, :email, :mobile, :gender, :age)
    end
end
