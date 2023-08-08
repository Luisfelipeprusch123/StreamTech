class UserProfilesController < ApplicationController
  def upload_avatar
    if current_user.update(avatar: params[:avatar])
      render json: { message: 'Avatar atualizado com sucesso' }, status: :ok
    else
      render json: { error: 'Erro ao atualizar o avatar' }, status: :unprocessable_entity
    end
  end
end
