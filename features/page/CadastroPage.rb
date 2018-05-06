require 'site_prism'
class CadastroPage <SitePrism::Page

    element :nomeCampo,         '#Nome'
    element :listaDDI,          '#TelemovelList'
    element :telemovel,         '#Telemovel'
    element :emailCampo,        '#Email'
    element :senioriedadeCampo, '#NivelProfissionalId'
    element :tecnologiasCampo,  '.select2-search__field'
    element :botaoFechar,       '.fa-2x.fa-times.btn-close-modal'
    element :botaoSalvar,       '#Save'

    def preencher(nome, paisDDI, numeroTel, email, senioridade, tecnologias)
        nomeCampo.set nome
        listaDDI.set paisDDI
        telemovel.set numeroTel
        emailCampo.set email
        senioriedadeCampo.set senioridade
        tecnologiasCampo.set tecnologias
        tecnologiasCampo.native.send_keys(:return)
    end

    def fecharModal()
        botaoFechar.click
    end

    def clicarSalvar()
        botaoSalvar.click
    end
end
