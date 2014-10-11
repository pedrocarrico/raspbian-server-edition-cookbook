require 'spec_helper'

describe command('hostname') do
  its(:stdout) { 'serverpi' }
end

describe package('tmux') do
  it { should be_installed }
end
