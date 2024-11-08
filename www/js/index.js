fetch('js/backend.json')
    .then(Response => Response.json())
    .then(data=> {
        localStorage.setItem('produtos', JSON.stringify(data));
        console.log('Dados dos produtos salvos no localStorage');
    })
    .catch(error => console.error('Erro ao fazer fetch dos dados: ' +error));


function favoritar(icon) {
    //se o coração esta fazio, preenche, se não esvazia
    if (icon.classList.contains('ri-heart-3-line')) {
        icon.classList.remove('ri-heart-3-line');
        icon.classList.add('ri-heart-3-fill');
        //console.log('Foi Favoritado!!');
    } else {
        icon.classList.remove('ri-heart-3-fill');
        icon.classList.add('ri-heart-3-line');
        //console.log('não é mais favorito ÚnÙ');
    }
}

function mudarFoto(butaozin) {
    //console.log(butaozin);

    //guarda a foto nessa variavel
    var foto = document.getElementById('foto-perfil');

    if (butaozin === 'foto01') {
        foto.src = 'img/Icon_02.png';
    } else if (butaozin === 'foto02') {
        foto.src = 'img/Icon_03.png';
    } else if (butaozin === 'foto03') {
        foto.src = 'img/Icon_04.png';
    } else if (butaozin === 'foto04') {
        foto.src = 'img/Icon_05.png';
    } else if (butaozin === 'foto05') {
        foto.src = 'img/Icon_06.png';
    }
}
