<?php
//Configuração do banco de dados
$db_host = "localhost"; //Hostname do servidor do banco de dados
$db_user = "root"; //Nome de usuário apara conectar ao banco de dados
$db_pass = ""; //Senha para conectar ao banco de dados (vazio significa sem senha)
$db_name = "db_biblioteca"; //Nome do banco de dados a conectar

//Conectar ao banco de dados
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

//Verificar se a conexão foi bem-sucedida
if (!$conn){
    //Se houver erro, exibir a mensagem de erro e encerrar a execução do script 
    //A seta -> é usada para acessar propriedades e métodos de objetos PHP, tornando o código mais legível e fácil do mundo
    die("Falha na conexão: " . mysqli_connect_error());
}
else{
    echo "PARABÉNS!!! A conexão ao banco de dados ocorreu normalmente!";
}
?>