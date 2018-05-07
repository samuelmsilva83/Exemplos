using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SystemPersonal.Entities;

namespace SystemPersonal.DAL
{
    public class AlunoDao
    {

        public List<Aluno> ConsultarTodosOsAlunos(String pesquisa)
        {
            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;

                if(pesquisa == "")
                {
                    command.CommandText = @"SELECT * FROM ALUNOS order by nome";
                }
                else
                {
                    command.CommandText = @"SELECT * FROM ALUNOS 
                                            WHERE [id] = @ID
                                              or    [nome]			like @PESQUISA
                                              or    [dtnascimento]  like @PESQUISA
                                              or	[email]			like @PESQUISA
                                              or	[telefone]		like @PESQUISA
                                              or	[celular]		like @PESQUISA 
                                            order by nome
                                        ";

                    if (Char.IsDigit(pesquisa, 0))
                    {
                        command.Parameters.AddWithValue("@ID", Convert.ToInt32(pesquisa));
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@ID", 0);
                    }
                        
                    command.Parameters.AddWithValue("@PESQUISA", "'%" + pesquisa + "%'");
                }
               

                Conexao.Conectar();
                var reader = command.ExecuteReader();

                var alunos = new List<Aluno>();

                while (reader.Read())
                {
                    var aluno = new Aluno();

                    aluno.Id                = Convert.ToInt32(reader["id"]);
                    aluno.Nome              = reader["nome"].ToString();
                    aluno.DtNascimento      = reader["dtnascimento"].ToString();
                    aluno.Email             = reader["email"].ToString();
                    aluno.Genero            = reader["genero"].ToString();
                    aluno.Telefone          = reader["telefone"].ToString();
                    aluno.Celular           = reader["celular"].ToString();
                    aluno.Observacao        = reader["observacao"].ToString();
                    aluno.Status            = reader["status"].ToString();

                    switch (reader["status"].ToString())
                    {
                        case "A":
                            aluno.ClasseStatus = "fa fa-power-off icone-acoes icone-aluno-ativo";
                            aluno.ToolTip = "Desativar";
                            break;
                        case "I":
                            aluno.ClasseStatus = "fa fa-power-off icone-acoes icone-aluno-inativo";
                            aluno.ToolTip = "Ativar";
                            break;
                        default:
                            aluno.ClasseStatus = "fa fa-power-off icone-acoes";
                            aluno.ToolTip = "";
                            break;
                    }

                    aluno.DtCadastro        = reader["dt_cadastro"].ToString();
                    aluno.UsuarioCadastro   = Convert.ToInt32(reader["usuario_cadastro"]);

                    alunos.Add(aluno);
                }
                reader.Close();

                return alunos;
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

        public int InserirAluno(Aluno aluno)
        {

            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;
                command.CommandText = @"INSERT INTO[dbo].[alunos]
                                       ([nome]
                                       ,[dtnascimento]
                                       ,[email]
                                       ,[genero]
                                       ,[telefone]
                                       ,[celular]
                                       ,[observacao]
                                       ,[status]
                                       ,[dt_cadastro]
                                       ,[usuario_cadastro])
                                 VALUES
                                       (@NOME
                                       ,@DT_NASCIMENTO
                                       ,@EMAIL
                                       ,@GENERO
                                       ,@TELEFONE
                                       ,@CELULAR
                                       ,@OBSERVACAO
                                       ,@STATUS
                                       ,@DT_CADASTRO
                                       ,@USUARIO_CADASTRO)";

                command.Parameters.AddWithValue("@NOME", aluno.Nome);
                command.Parameters.AddWithValue("@DT_NASCIMENTO", aluno.DtNascimento);
                command.Parameters.AddWithValue("@EMAIL", aluno.Email);
                command.Parameters.AddWithValue("@GENERO", aluno.Genero);
                command.Parameters.AddWithValue("@TELEFONE", aluno.Telefone);
                command.Parameters.AddWithValue("@CELULAR", aluno.Celular);
                command.Parameters.AddWithValue("@OBSERVACAO", aluno.Observacao);
                command.Parameters.AddWithValue("@STATUS", aluno.Status);
                command.Parameters.AddWithValue("@DT_CADASTRO", aluno.DtCadastro);
                command.Parameters.AddWithValue("@USUARIO_CADASTRO", aluno.UsuarioCadastro);

                Conexao.Conectar();

                return command.ExecuteNonQuery();
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

        public int ConsultarQtdeDeAlunos()
        {
            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;
                command.CommandText = "SELECT count(*) FROM ALUNOS";

                Conexao.Conectar();
                Int32 count = (Int32)command.ExecuteScalar();

                return count;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }

        public int AtualizaStatusAluno(int id, String status)
        {

            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;
                command.CommandText = @"UPDATE [dbo].[alunos]
                                          SET [status] = @STATUS
                                        WHERE [id] = @ID";

                command.Parameters.AddWithValue("@STATUS", status);
                command.Parameters.AddWithValue("@ID", id);
           
                Conexao.Conectar();

                return command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Conexao.Desconectar();
            }


        }

        public int ExcluiAluno(int id)
        {

            try
            {
                var command = new SqlCommand();
                command.Connection = Conexao.connection;
                command.CommandText = @"DELETE FROM [dbo].[alunos]
                                            WHERE [id] = @ID";

                command.Parameters.AddWithValue("@ID", id);

                Conexao.Conectar();

                return command.ExecuteNonQuery();
            }
            catch (Exception)
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
