SimpleCov.start 'rails' do
  enable_coverage :branch
end
Rails.application.eager_load! # this is because we're running with Spring!  Without this, coverage can be misreported.
