using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SystemPersonal.Entities;

namespace SystemPersonal.DAL
{
    public class UsuarioDao
    {
        public Usuario ConsultaUsuario(String nomeUsuario, String senha)
        {
            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;
                command.CommandText = "SELECT * FROM USUARIOS WHERE USUARIO = @USUARIO AND SENHA = @SENHA";

                command.Parameters.AddWithValue("@USUARIO", nomeUsuario);
                command.Parameters.AddWithValue("@SENHA", senha);

                Conexao.Conectar();
                var reader = command.ExecuteReader();

                Usuario usuario = null;

                while (reader.Read())
                {
                    usuario = new Usuario();
                    usuario.Id = Convert.ToInt32(reader["id"]);
                    usuario.NomeUsuario = reader["usuario"].ToString();
                    usuario.Senha = reader["senha"].ToString();
                    usuario.Perfil = reader["perfil"].ToString();
                }
                reader.Close();

                return usuario;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}
