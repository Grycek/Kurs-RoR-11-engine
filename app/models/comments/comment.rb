module Comments
    class Comment < ::ActiveRecord::Base
      attr_accessible :author, :content
    end
end
