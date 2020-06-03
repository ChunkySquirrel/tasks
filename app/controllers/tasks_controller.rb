class TasksController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate
  before_action :load_task, except: [:index, :new, :create]

  def index
      @tasks = current_user.tasks
  end

=======
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
  def new
    @task = Task.new
  end

<<<<<<< HEAD
  def create
    @task = Task.new task_params
    @task.user = current_user
    if @task.save
      redirect_to tasks_path, notice: "Task created."
    else
      render :new
    end
  end

  def show
    @note = Note.new
  end

  def edit
  end

  def update
    if @task.update task_params
      redirect_to @task, notice: "Task updated."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, alert: "Task deleted."
  end

  private

  def load_task
    @task = current_user.tasks.find params[:id]
  end

  def task_params
    params.require(:task).permit(:name,:due_date,:priority)
  end
=======
  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :due_date, :priority)
    end
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
end
