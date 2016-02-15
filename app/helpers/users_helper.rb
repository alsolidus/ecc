module UsersHelper
  def conversation_interlocutor(conversation)
    conversation.recipient == current_user ? conversation.sender : conversation.recipient
  end
  def job_title_icon
    if @user.profile.job_title == "ECC"
        "<i class='fa fa-code'></i>".html_safe
      elsif @user.profile.job_title == "NOC"
        "<i class='fa fa-lightbulb-o'></i>".html_safe
        elsif @user.profile.job_title == "employee"
        "<i class='fa fa-dollar'></i>".html_safe
    end
  end
end