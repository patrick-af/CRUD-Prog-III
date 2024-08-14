
// Função para consultar o CEP usando a API dos Correios
async function consultarCEP(cep) {
    try {
        const response = await fetch(`https://viacep.com.br/ws/${cep}/json`);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Erro ao consultar o CEP:', error);
        return null;
    }
}




async function consultaredCEP(edCepFun) {
    try {
        const response = await fetch(`https://viacep.com.br/ws/${edCepFun}/json`);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Erro ao consultar o CEP:', error);
        return null;
    }
}                  

// Adicionando evento de clique para o botão "Pesquisar"
document.querySelector('.api').addEventListener('click', async function() {
    let cep = document.getElementById('cep_fun').value;
    // Verificando se o campo CEP está preenchido
    if (cep.trim() !== '') {
        // Consultar o CEP
        const dadosCEP = await consultarCEP(cep);
        if (dadosCEP.error !== '' || null) {
            // Preencher os campos de endereço com os dados obtidos

            document.getElementById('logradouro_fun').value = dadosCEP.logradouro;
            document.getElementById('bairro_fun').value = dadosCEP.bairro;
            document.getElementById('cidade_fun').value = dadosCEP.localidade;
            document.getElementById('uf_fun').value = dadosCEP.uf;
       } else {
            alert('CEP não encontrado. Por favor, verifique e tente novamente.');
        }
    } else {
        alert('Por favor, preencha o campo CEP antes de pesquisar.');
    }
});






document.querySelector('.ed_api').addEventListener('click', async function() {
    let edcep = document.getElementById('edCep_fun').value;
    if (edcep.trim() !== '') {
        const dadosedCEP = await consultaredCEP(edcep);
        if (dadosedCEP && !dadosedCEP.erro) {
            document.getElementById('edLogradouro_fun').value = dadosedCEP.logradouro;
            document.getElementById('edBairro_fun').value = dadosedCEP.bairro;
            document.getElementById('edCidade_fun').value = dadosedCEP.localidade;
            document.getElementById('edUf_fun').value = dadosedCEP.uf;
        } else {
            alert('CEP não encontrado. Por favor, verifique e tente novamente.');
        }
    } else {
        alert('Por favor, preencha o campo CEP antes de pesquisar.');
    }
});

