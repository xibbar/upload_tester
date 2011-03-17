class Dokuei < ActiveRecord::Base
  has_attachment :storage => :file_system, :path_prefix => 'files'
end
