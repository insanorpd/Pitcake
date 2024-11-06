const express = require('express');
const mysql = require('mysql2/promise');
const bcrypt = require('bcrypt');
const app = express();

app.use(express.json()); // Permite parsear JSON no corpo da requisição

// Configuração do banco de dados MySQL
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'pitcake2024',
  database: 'pitcakedb',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

// Rota para cadastrar clientes
app.post('/cadastro', async (req, res) => {
  const { nome, email, senha } = req.body;

  try {
    // Criptografar a senha
    const hashedSenha = await bcrypt.hash(senha, 10);
    
    // Inserir novo cliente no banco de dados
    const [result] = await pool.query(
      'INSERT INTO clientes (nome, email, senha) VALUES (?, ?, ?)',
      [nome, email, hashedSenha]
    );

    res.status(201).json({ message: 'Cliente cadastrado com sucesso!' });
  } catch (err) {
    console.error('Erro ao cadastrar cliente:', err);
    res.status(500).json({ error: 'Erro ao cadastrar cliente' });
  }
});

// Rota para login de clientes
app.post('/login', async (req, res) => {
  const { email, senha } = req.body;

  try {
    // Buscar cliente pelo email
    const [clientes] = await pool.query('SELECT * FROM clientes WHERE email = ?', [email]);
    const cliente = clientes[0];

    if (!cliente) {
      return res.status(401).json({ error: 'E-mail ou senha incorretos' });
    }

    // Verificar a senha
    const match = await bcrypt.compare(senha, cliente.senha);

    if (match) {
      res.json({ message: 'Login bem-sucedido!' });
    } else {
      res.status(401).json({ error: 'E-mail ou senha incorretos' });
    }
  } catch (err) {
    console.error('Erro ao fazer login:', err);
    res.status(500).json({ error: 'Erro ao fazer login' });
  }
});

// Rota para buscar receitas e suas informações relacionadas
app.get('/receitas/:id', async (req, res) => {
  const receitaId = parseInt(req.params.id, 10);
  if (isNaN(receitaId)) {
    return res.status(400).json({ error: 'ID de receita inválido' });
  }

  try {
    const [receitaResults] = await pool.query('SELECT * FROM receitas WHERE id = ?', [receitaId]);
    const [ingredientesResults] = await pool.query('SELECT * FROM ingredientes WHERE receita_id = ?', [receitaId]);
    const [preparoResults] = await pool.query('SELECT * FROM preparo WHERE receita_id = ? ORDER BY ordem', [receitaId]);
    const [dicasResults] = await pool.query('SELECT * FROM dicas WHERE receita_id = ?', [receitaId]);

    res.json({
      receita: receitaResults[0] || null,
      ingredientes: ingredientesResults,
      preparo: preparoResults,
      dicas: dicasResults
    });
  } catch (err) {
    console.error('Erro ao buscar dados:', err);
    res.status(500).json({ error: 'Erro ao buscar dados' });
  }
});

// Iniciar o servidor na porta 3000
app.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});


