class Hobbit < ActiveRecord::Base

    # needs a foreign key
    belongs_to :shire

end
