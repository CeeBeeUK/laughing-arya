SimpleCov.start 'rails' do
  enable_coverage :branch
  minimum_coverage 30
  refuse_coverage_drop
  add_filter %r{^/app/channels/}
  add_filter %r{^/app/controllers/}
  add_filter %r{^/app/jobs/}
  add_filter %r{^/app/mailers/}
end
