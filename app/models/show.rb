class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters
    belongs_to :network


    def actors_list
        actors.map do |t|
            "#{t.full_name}" 
        end
    end
end