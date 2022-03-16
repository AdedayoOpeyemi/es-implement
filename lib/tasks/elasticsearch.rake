require 'elasticsearch/rails/tasks/import'

rake environment elasticsearch:import:model CLASS='Patient' FORCE=y