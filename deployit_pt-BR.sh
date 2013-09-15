#!/bin/bash

# exemplos: meus_projetos/website/*, index.html, website/css
arquivo_ou_diretorio="" ;

# exemplo: marcker@ftp.marcker.org
dados_ssh="";

# exemplo: ~/public_html/tests
destino="";

deployit () {
  if [[ $arquivo_ou_diretorio && $dados_ssh && $destino ]]; then
    rsync -avz -e ssh $arquivo_ou_diretorio $dados_ssh:$destino
  else
    echo -e "Faltando paramêtro (s).";
  fi
}

initializer() {
  deployit;
}

initializer;