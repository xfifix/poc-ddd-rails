# frozen_string_literal: true

Rails.configuration.to_prepare do
  # Rails.application.config.event_store = RailsEventStore::Client.new
  #
  # Rails.configuration.event_store.tap do |store|
  #   store.subscribe(Application::Command::Message::CreateProductCommand, Application::Command::Handler::CreateProductCommandHandler)
  #   # Ajouter d'autres enregistrements pour d'autres commandes et gestionnaires
  # end
  event_store = RailsEventStore::Client.new

  # Enregistrez les gestionnaires d'événements ici
  #event_store.subscribe(Application::Command::Handler::CreateProductCommandHandler.new, to:Application::Command::Message::CreateProductCommand)

end
