class Country
    attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
    @@records = []
    

    def initialize(country_name, country_confirmed_cases, country_overall_deaths, country_recoveries)
        @name = country_name
        @confirmed_cases = country_confirmed_cases
        @overall_deaths = country_overall_deaths
        @recoveries = country_recoveries
        @@records << self
    end


    def self.all
        @@records
    end
end
