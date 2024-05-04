# Bot Discord com Modelo LLM Local Customizado

Este projeto consiste em um bot do Discord escrito em Ruby on Rails na versão 7. Ele utiliza um modelo de Large Language Model (LLM) local customizado, garantindo total confidencialidade e privacidade, pois não compartilha informações e roda completamente offline.

 ## Funcionalidades

- Responde a comandos específicos do Discord.
- Utiliza um modelo LLM local para gerar respostas.
- Mantém total confidencialidade dos dados.

## Instalação e Uso

1. Clone o repositório:
```bash
  git clone https://github.com/HenriqueRicardoFigueira/discordllm.git
```
2. Instale as dependências:

```bash
  bundle install
```
3. Configure as variáveis de ambiente no arquivo .env:
```bash
OLLAMA_URL = 'url'
OLLAMA_MODEL = 'nome do modelo'
```
4. Adicione as credenciais no ambiente:
```bash
 EDITOR='vi' rails credentails:edit --environment=ambiente
```
5. Execute o bot:
```bash
rails s
```

## Licença

Este projeto está licenciado sob a Licença MIT.
