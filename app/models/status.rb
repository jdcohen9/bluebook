class Status < ActiveRecord::Base
  # attr_accessible :context
  def status_params
    params.require(:status).permit(:context, :user_id)
  end

  belongs_to :user
end

