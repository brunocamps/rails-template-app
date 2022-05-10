module ApplicationHelper
    # Returns the full title on a per-page basis
    def full_title(page_title = '') # method definition, optional argument
        base_title = "Ruby on Rails Tutorial Sample App" # variable assignment
        if page_title.empty? # Boolean test
            base_title # Implicit return
        else
            page_title + " | " + base_title # String concatenation
        end
    end
end