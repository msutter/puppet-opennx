# Fact: gitlab_user_id gitlab_user_name gitlab_user_path
#
# Purpose: Return various facts about gitlab account of the current user
#

require 'active_support/inflector'

passwd_array = Facter::Util::Resolution.exec("/usr/bin/id -P").split(':')

Facter.add("swisscom_user_id") do
  setcode do
    passwd_array[0]
  end
end

Facter.add("swisscom_user_name_unit") do
  setcode do
    passwd_array[7]
  end
end

# name_org_array = passwd_array[7].split(',')

# Facter.add("swisscom_user_name") do
#   setcode do
#     Facter.value("swisscom_user_name_unit").split(',')[0]
#   end
# end

# Facter.add("swisscom_user_unit") do
#   setcode do
#     Facter.value("swisscom_user_name_unit").split(',')[1].strip
#   end
# end


# Facter.add("swisscom_gitlab_user_path") do
#   setcode do
#     r = Facter.value("swisscom_user_name")
#     ActiveSupport::Inflector.transliterate(r).downcase.gsub(' ','.')
#   end
# end
