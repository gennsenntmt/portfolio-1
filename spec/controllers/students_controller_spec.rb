require 'rails_helper'

describe StudentsController do
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
    end
  end
end