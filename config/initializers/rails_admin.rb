RailsAdmin.config do |config|

  config.model 'Blog' do
    edit do
      field :title do

      end
      field :content do

      end
      field :slug do
        hide
      end
    end
  end

  def current_user
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end


  config.authorize_with do
    redirect_to main_app.root_path unless logged_in?
  end




  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
