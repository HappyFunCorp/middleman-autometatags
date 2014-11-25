require 'middleman-core'

::Middleman::Extensions.register(:autometatags) do
  require 'middleman-autometatags/extension'
  ::Middleman::Autometatags
end