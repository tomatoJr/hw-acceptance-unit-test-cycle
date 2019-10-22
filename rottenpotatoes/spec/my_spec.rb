require 'rails_helper'


describe 'find_by_title' do
  it 'can find movie by title' do
    expect { Movie.find_by_title("Aladdin") }.not_to raise_error
  end
end


 