const pg = require('pg');

var config = {
  user: 'wady', //env var: PGUSER
  database: 'recipebookdb', //env var: PGDATABASE
  password: '1234', //env var: PGPASSWORD
  host: 'postgres://evmadugeuvpyii:b918c11f638ad50cac5fc912693a8783ff24f125c871b1c8bd080bb35884e2a2@ec2-107-21-99-176.compute-1.amazonaws.com:5432/devj46kojun2ua', // Server hosting the postgres database
  port: 5432, //env var: PGPORT
  max: 10, // max number of clients in the pool
  idleTimeoutMillis: 30000, // how long a client is allowed to remain idle before being closed
};

const pool = new pg.Pool(config);

pool.on('error', function (err, client) {
  console.error('idle client error', err.message, err.stack);
});

module.exports.query = function (text, values, callback) {
  return pool.query(text, values, callback);
};

module.exports.connect = function (callback) {
  return pool.connect(callback);
};