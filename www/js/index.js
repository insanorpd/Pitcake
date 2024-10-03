fetch('js/backend.json')
    .then(Response => Response.json())
    .then(data=> {
        localStorage.setItem('produtos', JSON.stringify(data));
        console.log('Dados dos produtos salvos no localStorage');
    })
    .catch(error => console.error('Erro ao fazer fetch dos dados: ' +error))