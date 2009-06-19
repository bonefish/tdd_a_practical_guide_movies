# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  ActiveScaffold.set_defaults do |config|
    config.ignore_columns.add [:created_at, :updated_at, :lock_version]
#    config.actions.exclude :search
#    config.actions << :live_search
#    config.actions << :field_search
#    config.actions.add :export
# these go in individual controller    
#    config.export.columns = [ :id, :name, :amount ]
#    config.export.default_deselected_columns = [ :birth_date ]
#    config.export.default_delimiter = ','
#    config.export.force_quotes = true
#
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
