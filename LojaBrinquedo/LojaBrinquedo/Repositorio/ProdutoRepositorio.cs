//biblioteca do mysql
using Dapper;
using LojaBrinquedo.Models;
using MySql.Data.MySqlClient;


namespace LojaBrinquedo.Repositorio
{
    public class ProdutoRepositorio
    {
        //lê a estância
        private readonly string _connectionString;

        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }

        //tarefa assíncrona 
        public async Task<IEnumerable<Produto>> TodosProdutos()
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "SELECT Id, Nome, Descricao, Preco, UrlImg, Estoque FROM Produto";
            return await connection.QueryAsync<Produto>(sql);
        }


        public async Task<Produto?> ProdutosPorId(int id)
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "SELECT Id, Nome, Descricao, Preco, UrlImg, Estoque FROM Produto WHERE Id = @Id";
            return await connection.QueryFirstOrDefaultAsync<Produto>(sql, new { Id = id });
        }


    }


}