
require 'rails_helper'

RSpec.describe ComicsController, type: :controller do
  it "USer" do

    get :index

    expect(response).to have_http_status(:success)

  end
end
