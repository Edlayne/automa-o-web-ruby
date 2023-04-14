class Parceiros < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :link_parceiro_vincit, 'a[href="https://www.faculdadevincit.edu.br/"]'

    def click_link_vincit
        link_parceiro_vincit.click
    end

     def validate_link_vincit
       expect(page.current_url).to include('https://www.faculdadevincit.edu.br/')
     end
end

