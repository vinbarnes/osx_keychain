require "minitest/autorun"
require "osx_keychain"

class TestOsxKeychain < MiniTest::Unit::TestCase
  def test_sanity
    keychain = OSXKeychain.new

    serv, user, pass = %w[osx_keychain_test username password]

    keychain[serv, user] = pass

    assert_equal pass, keychain[serv, user]
    assert_equal pass, keychain[serv]
  end
end
