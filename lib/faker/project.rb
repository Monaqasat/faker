module Faker
  class Project
    class << self
      def name
        Formats.rand.call
      end
    
      def type
        ['Villa', 'Villa Complex', 'Building', 'Mixed-Used Building', 'Commercial Building', 'Residential Building', 'Hotel Complex', 'Real-Estate Development', 'Road', 'Infrastructure Works', 'Underground Works', 'Structural Works', 'Refurbishing', 'Landscaping', 'Hospital Complex'].rand
      end

      def location
        ['Al Ain','Abu Dhabi', 'Dubai', 'Fujairah', 'Iraq', 'Yemen', 'Oman', 'Muscat', 'Morocco', 'Jordan', 'Beirut', 'Amman', 'Riyadh', 'Jeddah'].rand
      end
    end
    
    Formats = [
      Proc.new { [ type, "for", Name.first_name, Name.last_name, "in", location ].join(' ') }
      ]
  end
end