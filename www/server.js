const express = require('express');
const mysql = require('mysql2');
const app = express();

// Configuração do banco de dados MySQL
const connection = mysql.createConnection({
  host: 'localhost',  // ou o endereço IP do seu servidor MySQL
  user: 'root',
  password: 'pitcake2024',
  database: 'pitcakedb'
});

connection.connect(err => {
  if (err) {
    console.error('Erro ao conectar ao MySQL:', err);
    return;
  }
  console.log('Conectado ao MySQL!');
});

// Rota para buscar receitas e suas informações relacionadas
app.get('/receitas/:id', (req, res) => {
  const receitaId = req.params.id;
  
  // Consulta para buscar a receita
  const queryReceita = 'SELECT * FROM receitas WHERE id = ?';
  // Consulta para buscar ingredientes
  const queryIngredientes = 'SELECT * FROM ingredientes WHERE receita_id = ?';
  // Consulta para buscar modo de preparo
  const queryPreparo = 'SELECT * FROM preparo WHERE receita_id = ? ORDER BY ordem';
  // Consulta para buscar dicas
  const queryDicas = 'SELECT * FROM dicas WHERE receita_id = ?';
  
  connection.query(queryReceita, [receitaId], (err, receitaResults) => {
    if (err) return res.status(500).json({ error: err.message });

    connection.query(queryIngredientes, [receitaId], (err, ingredientesResults) => {
      if (err) return res.status(500).json({ error: err.message });

      connection.query(queryPreparo, [receitaId], (err, preparoResults) => {
        if (err) return res.status(500).json({ error: err.message });

        connection.query(queryDicas, [receitaId], (err, dicasResults) => {
          if (err) return res.status(500).json({ error: err.message });

          // Enviar os resultados como resposta JSON
          res.json({
            receita: receitaResults[0],
            ingredientes: ingredientesResults,
            preparo: preparoResults,
            dicas: dicasResults
          });
        });
      });
    });
  });
});

// Iniciar o servidor na porta 3000
app.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});