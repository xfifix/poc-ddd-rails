class ApplicationController < ActionController::Base
  append_view_path(Rails.root.glob('packages/*/app/ui'))
end
