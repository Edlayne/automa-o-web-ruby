Quando('eu clico no link do parceiro vincit') do
    parceiros.click_link_vincit
  end
  
  Então('sou direcionado para o site do parceiro vincit') do  
    parceiros.validate_link_vincit 
end