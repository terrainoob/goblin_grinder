require 'rails_helper'

describe Views::Notes::Index do

  let(:output) { render Views::Notes::Index.new }

  it 'prints hello world' do
    expect(output).not_to be_nil
  end
end
