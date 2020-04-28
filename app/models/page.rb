class Page < ApplicationRecord
    has_many :items

    validates_presence_of :name 

    def make_items
        self.items.map{|i| 
            {
                title: i.title,
                types: i.make_types,
                link: i.link,
                eventDate: i.make_date,
                progressive: i.make_progressive,
                page: i.page.name,
                countries: i.make_countries
            }
        }
    end
end
