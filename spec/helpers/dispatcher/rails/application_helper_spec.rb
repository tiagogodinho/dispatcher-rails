require 'spec_helper'

describe Dispatcher::Rails::ApplicationHelper do
  describe '#dispatcher_tag' do
    it 'returns a metatag with controller and action names' do
      helper.stub_chain(:controller, :class, :name).and_return('ProjectsController')
      helper.stub_chain(:controller, :action_name).and_return('index')

      expect(helper.dispatcher_tag).to eq('<meta content="projects#index" name="page" />')
    end
  end
end
