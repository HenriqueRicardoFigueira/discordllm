# frozen_string_literal: true

# ApplicationRecord is the base mailer class for the application.
# It provides common functionality for sending emails.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
