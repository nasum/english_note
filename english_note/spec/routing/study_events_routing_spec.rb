require 'rails_helper'

RSpec.describe StudyEventsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/study_events').to route_to('study_events#index')
    end
  end
end
