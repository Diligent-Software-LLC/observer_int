require_relative 'test_helper'

# ObserverIntTest.
# @class_description
#   Tests the ObserverInt class.
class ObserverIntTest < Minitest::Test

  # Constants.
  CLASS = ObserverInt

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(ObserverInt::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
    @pub_cm  = CLASS.public_methods(false)
    @priv_cm = CLASS.private_methods(false)
  end

  # test_pubcm_dec().
  # @description
  #   'ObserverInt.observable()', 'ObserverInt.changed(instance = nil)', and
  #   'ObserverInt.notify(instance = nil)' were declared.
  def test_pubcm_dec()

    assert_includes(@pub_cm, :observable)
    assert_includes(@pub_cm, :changed)
    assert_includes(@pub_cm, :notify)
    assert_includes(@pub_cm, :type)

  end

  # test_privcm_dec().
  # @description
  #   'ObserverInt.kind_observer(instance = nil)', and 'ObserverInt.new()' were
  #   declared.
  def test_privcm_dec()
    assert_includes(@priv_cm, :kind_observer)
    assert_includes(@priv_cm, :new)
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
