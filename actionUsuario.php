<?php include "header.php" ?>

    <?php
        //Verifica se o método de envio das informações do form é "POST"
        if($_SERVER["REQUEST_METHOD"] == "POST"){
            //Cria variáveis para armazenar as informações recebidas do array $_POST
            $nome_usuario = $email_usuario = $senha_usuario = $cpf_usuario = $cnpj_usuario = $status_usuario = $data_cadastro = $tipo_usuario = "";

            $data_cadastro = date("Y-m-d");
            //Variável booleana para controle de erros de preenchimento
            $erroPreenchimento = false;

            //Validação do campo nome_usuario
            //Utiliza a função empty() para verificar se o campo está vazio
            if(empty($_POST["nome_usuario"])){
                echo "<div class='alert alert-warning text-center'>O campo <strong>NOME</strong> é obrigatório!</div>";
                $erroPreenchimento = true;
            }
            else{
                //Se o $_POST["nome_usuario"] não estiver vazio, é filtrado e armazenado na variável PHP
                $nome_usuario = filtrar_entrada($_POST["nome_usuario"]);

                //Utiliza a função preg_match() para verificar se há apenas letras no nome
                if(!preg_match('/^[\p{L} ]+$/u', $nome_usuario)){
                    echo "<div class='alert alert-warning text-center'>O campo <strong>NOME</strong> deve conter apenas letras!</div>";
                    $erroPreenchimento = true;
                }
            }

            //Validação do campo email_usuario
            //Utiliza a função empty() para verificar se o campo está vazio
            if(empty($_POST["email_usuario"])){
                echo "<div class='alert alert-warning text-center'>O campo <strong>EMAIL</strong> é obrigatório!</div>";
                $erroPreenchimento = true;
            }
            else{
                //Se o $_POST["email_usuario"] não estiver vazio, é filtrado e armazenado na variável PHP
                $email_usuario = filtrar_entrada($_POST["email_usuario"]);
            }

            //Validação do campo senha_usuario
            //Utiliza a função empty() para verificar se o campo está vazio
            if(empty($_POST["senha_usuario"])){
                echo "<div class='alert alert-warning text-center'>O campo <strong>SENHA</strong> é obrigatório!</div>";
                $erroPreenchimento = true;
            }
            else{
                //Se o $_POST["senha_usuario"] não estiver vazio, é filtrado e armazenado na variável PHP
                //Usa a função md5() para criptografar a senha do usuário
                $senha_usuario = md5(filtrar_entrada($_POST["senha_usuario"]));
            }

            if($tipo_usuario == 0){ // Pessoa Física

                if(empty($_POST["cpf_usuario"])){
                    echo "<div class='alert alert-warning text-center'>O campo <strong>CPF</strong> é obrigatório!</div>";
                    $erroPreenchimento = true;
                }else{
                    $cpf_usuario = filtrar_entrada($_POST["cpf_usuario"]);
                }

                $cnpj_usuario = NULL;

            }
            if($tipo_usuario == 1){ // Pessoa Juridica

                if(empty($_POST["cnpj_usuario"])){
                    echo "<div class='alert alert-warning text-center'>O campo <strong>CNPJ</strong> é obrigatório!</div>";
                    $erroPreenchimento = true;
                }else{
                    $cnpj_usuario = filtrar_entrada($_POST["cnpj_usuario"]);
                }

                $cpf_usuario = NULL;

            }


            //Início da validação do campo fotoUsuario
            $diretorio    = "assets/img/"; //Define para qual diretório as imagens serão movidas    
            $erroUpload   = false; //Variável para controle de erros no upload da foto

            //Verifica se o tamanho do arquivo é diferente de ZER

            //Verifica se não há erro de preenchimento
            if(!$erroPreenchimento && !$erroUpload){

                //Cria uma variável para armazenar a QUERY que realiza a inserção de dados na tabela Usuarios
                $inserirUsuario = "INSERT INTO usuario (nome_usuario, email_usuario, senha_usuario, cpf_usuario, cnpj_usuario, status_usuario, data_cadastro, tipo_usuario) VALUES ('$nome_usuario', '$email_usuario', '$senha_usuario', '$cpf_usuario', '$cnpj_usuario', '$status_usuario', '$data_cadastro', '$tipo_usuario')";

                //Inclui o arquivo de conexão com o Banco de Dados
                include "conexaoBD.php";

                //Usa a função mysqli_query() para executar a QUERY no Banco de Dados
                //Se conseguir, exibe alerta de sucesso e tabela com os dados informados
                if(mysqli_query($conn, $inserirUsuario)){

                    echo "<div class='alert alert-success text-center'>O cadastro do <strong>USUÁRIO</strong> foi efetuado com sucesso!</div>";
                    echo "
                        <div class='container mb-3 mt-3'>
                            <table class='table'>
                                <tr>
                                    <th>NOME</th>
                                    <td>$nome_usuario</td>
                                </tr>
                
                                <tr>
                                    <th>EMAIL</th>
                                    <td>$email_usuario</td>
                                </tr>
                                <tr>
                                    <th>SENHA</th>
                                    <td>$senha_usuario</td>
                                </tr>
                                  <tr>
                                    <th>CPF</th>
                                    <td>$cpf_usuario</td>
                                </tr>
                                <tr>
                                    <th>CNPJ</th>
                                    <td>$cnpj_usuario</td>
                                </tr>
                                <tr>
                                    <th>STATUS</th>
                                    <td>$status_usuario</td>
                                </tr>
                                <tr>
                                    <th>DATA</th>
                                    <td>$data_cadastro</td>
                                </tr>
                                <tr>
                                    <th>TIPO</th>
                                    <td>$tipo_usuario</td>
                                </tr>
            
                            </table>
                        </div>
                    ";
                }
                else{
                    echo "<div class='alert alert-danger text-center'>Erro ao tentar cadastrar <strong>USUÁRIO</strong> no banco de dados!</div>";
                }
            }

        }
        else{
            //Usa a função header() para redirecionar o usuário para o formUsuario.php
            header("location:formUsuario.php");
        }

        //Função para filtrar entrada de dados e evitar SQL Injection
        function filtrar_entrada($dado){
            $dado = trim($dado); //Remove espaços desnecessários
            $dado = stripslashes($dado); //Remove barras invertidas
            $dado = htmlspecialchars($dado); //Converte caracteres especiais em entidades HTML

            //Após o dado passar pelos filtros, é retornado
            return($dado);
        }
    ?>

<?php include "footer.php" ?>