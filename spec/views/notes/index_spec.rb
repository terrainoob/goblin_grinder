require 'spec_helper'

describe ::Views::Notes::Index do

  let(:output) { render_view(Notes.index) }

  it 'prints hello world' do
    expect(output).not_to be_nil
  end
end