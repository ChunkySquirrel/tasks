class NotesController < ApplicationController
  before_action :authenticate
  before_action :load_task
  before_action :load_note, except: [:index, :new, :create]

  def index
    @notes = @task.notes
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new note_params
    @note.task = @task
    if @task.notes << @note
      redirect_to task_notes_path(@task), notice: "Note created."
    else
      render :new
    end
  end

  def show
    @note = @task.notes.find params[:id]
  end

  def show

  end

  def edit

  end

  def update
    if @note.update note_params
      redirect_to [@task,@note], notice: "Note updated"
    else
      render :edit;
    end
  end

  def destroy
    @note.destroy
    redirect_to task_notes_path(@task)
  end

  private

  def load_task
      @task = current_user.tasks.find params[:task_id]
  end

  def load_note
  @note = @task.notes.find params[:id]
  end

  def note_params
    params.require(:note).permit(:title,:body)
  end

end
