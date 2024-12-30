const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const { Pool } = require('pg');

const app = express();
const port = 3001;

app.use(cors());
app.use(bodyParser.json());

// Connect to PostgreSQL
const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'atlas_db',
    password: 'ixtNJ6',
    port: 5432,
});

// Example endpoint: Get all countries
app.get('/api/countries', async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM Countries');
        res.json(result.rows);
    } catch (err) {
        console.error(err);
        res.status(500).send('Error retrieving data');
    }
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
