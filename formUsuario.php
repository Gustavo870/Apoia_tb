<?php include "header.php" ?>



<!--php -->

    <div class="d-flex justify-content-center mb-3">
        <h2>Cadastre-se</h2>
    </div>

    <div class="d-flex justify-content-center mb-4">
        <form action="actionUsuario.php" method="POST" class="was-validated w-25"  enctype="multipart/form-data">


            <div class="form-floating mt-3 mb-3">
                <input type="text" name="nome_usuario" id="nome_usuario" placeholder="Nome Completo" class="form-control">
                <label for="nome_usuario">Nome</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-floating mt-3 mb-3">
                <select name="tipo_usuario" id="tipo_usuario" class="form-control" required>
                    <option value="0">Pessoa Física</option>
                    <option value="1">Pessoa Jurídica</option>
                </select>
                <label for="tipo_usuario">Tipo de Usuário</label>

            </div>
            <div class="form-floating mt-3 mb-3" id="divCpf">
                <input type="text" name="cpf_usuario" id="cpf_usuario" class="form-control" placeholder="CPF">
                <label for="cpf_usuario">CPF</label>
            </div>

            <div class="form-floating mt-3 mb-3" id="divCnpj" style="display:none;">
                <input type="text" name="cnpj_usuario" id="cnpj_usuario" class="form-control" placeholder="CNPJ">
                <label for="cnpj_usuario">CNPJ</label>
            </div>


            <div class="form-floating mt-3 mb-3">
                <input type="date" name="dataNascimento_Usuario" id="dataNascimento_Usuario" placeholder="Data de Nascimento" class="form-control">
                <label for="dataNascimentoUsuario">Data de Nascimento</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-floating mt-3 mb-3">
                <select name="cidadeUsuario" id="cidadeUsuario" placeholder="Cidade" class="form-control">
                    <option value="Curiúva">Curiúva</option>
                    <option value="Imbaú">Imbaú</option>
                    <option value="Ortigueira">Ortigueira</option>
                    <option value="Reserva">Reserva</option>
                    <option value="Telêmaco Borba" selected>Telêmaco Borba</option>
                    <option value="Tibagi">Tibagi</option>
                </select>
                <label for="cidadeUsuario">Cidade</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-floating mt-3 mb-3">
                <input type="email" name="email_usuario" id="email_usuario" placeholder="Email" class="form-control">
                <label for="email_usuario">Email</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-floating mt-3 mb-3">
                <input type="password" name="senha_usuario" id="senha_usuario" placeholder="Senha" class="form-control" minlength="3" maxlength="8">
                <label for="senha_usuario">Senha</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-floating mt-3 mb-3">
                <input type="password" name="confirmarSenhaUsuario" id="confirmarSenhaUsuario" placeholder="Confirme a Senha" class="form-control" minlength="3" maxlength="8">
                <label for="confirmarSenhaUsuario">Confirme a Senha</label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>



            <button type="submit" class="btn btn-outline-dark">Cadastrar</button>

        </form>

    </div>
    

    <!-- java script -->

    <script>
    const tipo_usuario = document.getElementById("tipo_usuario");
    const divCpf = document.getElementById("divCpf");
    const divCnpj = document.getElementById("divCnpj");

    tipo_usuario.addEventListener("change", function() {

        if (this.value == "0") {
            divCpf.style.display = "block";
            divCnpj.style.display = "none";
        } else {
            divCpf.style.display = "none";
            divCnpj.style.display = "block";
        }

    });
    </script>
<?php include "footer.php" ?>