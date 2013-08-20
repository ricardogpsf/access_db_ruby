require 'yaml'
require 'pg'

config = YAML.load_file('db_config.yml')

pg_conn = PGconn.connect(config)

# retorna um array de objetos, onde cada objeto é um hash de cada linha da tabela do banco
values = pg_conn.exec("SELECT * FROM clients").find_all.to_a

p values