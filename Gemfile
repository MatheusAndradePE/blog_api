source "https://rubygems.org"

# Versão do Rails
gem "rails", "~> 7.1.0"  # Atualização para a versão 7.1.x do Rails

# Banco de Dados
gem "pg", "~> 1.1"  # Dependência para PostgreSQL

# Web Server
gem "puma", ">= 5.0"

# Timezone
gem "tzinfo-data", platforms: %i[windows jruby]

# Gems específicas do projeto
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Gems para performance de carregamento
gem "bootsnap", require: false

# Gems para deploy e desenvolvimento
gem "kamal", require: false
gem "thruster", require: false

# Gems para desenvolvimento e testes
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false  # Análise de segurança para o código
  gem "rubocop-rails-omakase", require: false  # Linting para o Rails
end

# Gems de desenvolvimento
group :development do
  gem "letter_opener", "~> 1.10"  # Para visualizar e-mails durante o desenvolvimento
end

# Autenticação com tokens
gem "devise_token_auth", "~> 1.2"  # Para autenticação via token

# Serialização de objetos
gem 'active_model_serializers'  # Para serializar objetos
