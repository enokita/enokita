class DiaryEntriesController < ApplicationController
  before_action :set_diary_entry, only: [:show, :edit, :update, :destroy]

  def index
    @diary_entries = DiaryEntry.all
  end
  

  def new
    @diary_entry = current_user.diary_entries.new
  end

  def create
    @diary_entry = current_user.diary_entries.new(diary_entry_parameter)
    if @diary_entry.save!
      redirect_to diary_entries_path, notice: '日記が保存されました。'
    else
      @diary_entries = DiaryEntry.all
      render :new
    end
  end

  def destroy
    @diary_entry.destroy
    redirect_to diary_entries_path, notice: "削除しました"
  end

  def edit
  end

  def update
    if @diary_entry.update(diary_entry_parameter)
      redirect_to diary_entries_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def set_diary_entry
    @diary_entry = DiaryEntry.find(params[:id])
  end

  def diary_entry_parameter
    params.require(:diary_entry).permit(:date, :condition, :weather, :sauna_temperature, :cold_bath_temperature, :state_of_relaxation)
  end
end
