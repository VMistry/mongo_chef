# # encoding: utf-8

# Inspec test for recipe mongo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe package 'mongodb-org' do
  it{should be_installed}
  its('version') {should match /3\./}
end

# Run and enable ports
describe service("mongod") do
  it { should be_running }
  it { should be_enabled }
end

# Look for ports
describe port('0.0.0.0', 27017) do
  it { should be_listening }
end
