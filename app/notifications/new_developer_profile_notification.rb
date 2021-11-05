# To deliver this notification:
#
# NewDeveloperProfileNotification.with(developer: @developer).deliver_later(current_user)
# NewDeveloperProfileNotification.with(developer: @developer).deliver(current_user)

class NewDeveloperProfileNotification < Noticed::Base
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"

  param :developer

  # Define helper methods to make rendering easier.
  #
  # def message
  #   t(".message")
  # end
  #
  def url
    developer_path(params[:developer])
  end
end
