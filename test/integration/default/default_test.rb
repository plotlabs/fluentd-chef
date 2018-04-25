# # encoding: utf-8

# Inspec test for recipe fluentd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe port(8888), :skip do
  it { should_not be_listening }
end