# # encoding: utf-8

# Inspec test for recipe fluentd::fluentd

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe command('sh /tmp/install_fluentd.sh') do
  it { should exist }
  it { should eq true }
end

describe command('/etc/init.d/td-agent start') do
  it { should exist }
  it { should eq true }
end