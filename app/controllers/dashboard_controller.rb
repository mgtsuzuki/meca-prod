class DashboardController < ApplicationController
  def index
    if current_user.role == "aluno"
      @complemento = current_user.complemento || current_user.build_complemento
      @complemento.save(:validate => false)
    end
  end
end