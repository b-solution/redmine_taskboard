Redmine::Plugin.register :redmine_taskboard do
  name 'Redmine Taskboard plugin'
  author 'Bilel KEDIDI'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  project_module :redmine_taskboard do
    permission :manage_meeting_calendar, :task_board => [:index, :create, :update, :destroy]
  end

  menu :project_menu, :taskboard,
       {:controller => 'task_board', :action => 'index'},
       :caption => :label_taskboard_plural,
       :before => :issues, param: :project_id
end
