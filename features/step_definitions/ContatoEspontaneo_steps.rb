
Dado("que eu estou no formulário de cadastro") do
    visit('http://www.aubay.pt/Home/Index_PT#services')
    find('.btn', :text => 'Candidatura Espontânea').click
    @cadastro_Page = CadastroPage.new
end
  
Dado("possuo os seguintes dados:") do |table|
    @usuario = table.rows_hash
 end
  
Quando("faço o meu cadastro") do
    @cadastro_Page.preencher(@usuario[:nome], @usuario[:DDI], @usuario[:numeroTel], @usuario[:email], @usuario[:senioridade], @usuario[:tecnologias])
end
  
Então("vejo a mensagem {string}") do |mensagem_alerta|
    @cadastro_Page.clicarSalvar()
    assert_text(mensagem_alerta)
    @cadastro_Page.fecharModal()
end