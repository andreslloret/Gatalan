class RegistersController < ApplicationController
  def index
    @registers = current_user.registers
  end

  def create
    @register = current_user.registers.new(register_params)
    if @register.save
      flash[:success] = 'Register successful'
      redirect_to registers_path
    else
      render :new
    end
  end

  private

  def register_params
    params.require(:register).permit(:name, :email, :phone, :tour, :date)
  end
end
