# # encoding: utf-8

# Inspec test for recipe fluentd::pre

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/security/limits.conf') do
   it { should exist }
   it { should be_file }
end

describe file('/etc/sysctl.conf') do
   it { should exist }
   it { should be_file }
end

describe command('sysctl -p') do
  it { should exist }
  it { should eq true }
end