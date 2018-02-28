Dado("que eu acessei a pagina") do
    visit 'http://191.232.189.40:3131/'
end
  
Quando("faço login com {string} e {string}") do |email, senha|
    find('input[placeholder="Email"]').set email
    find('input[placeholder="Senha"]').set senha
    find('button[id=btn]').click
    sleep 2
end

Então("sou autenticado com sucesso") do
    expect(page).to have_content 'Acessos'
end

Então("vejo o painel com os gráficos") do
    expect(page).to have_content 'Acessos por dia'
end

Então("devo ver a mensagem {string}") do |alerta|
    msg_alerta = find('[id="erro"]')
    expect(msg_alerta.text).to eql alerta
end