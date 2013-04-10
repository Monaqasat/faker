module Faker
  class Project
    class << self
      def name
        Formats.rand.call
      end
    
      def prefix
        %w(Villa Complex Hospital Multi-Use Building Road Bridge).rand

      def location
        %w(Al-Ain AbuDhabi Dubai Fujairah Iraq Yemen Oman Muscat)
      end

    end
    
    Formats = [
      Proc.new { [ prefix, Name.first_name, Name.last_name, "in", location ].join(' ') }
      ]
  end
end