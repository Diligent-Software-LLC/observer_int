# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "observer_int/version"

# ObserverInt.
# @abstract
# @class_description
#   An Observer library interface.
class ObserverInt

  # self.observable().
  # @description
  #   Gets OBSERVABLE.
  # @return [Set]
  #   OBSERVABLE's reference.
  def self.observable()
  end

  # self.type(identifier = nil).
  # @description
  #   Predicate. Verifies an identifier is an Observable identifier.
  # @param identifier [.]
  #   Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case the identifier is an Observable type. False otherwise.
  def self.type(identifier = nil)
  end

  # self.changed(instance = nil).
  # @description
  #   Verifies an instance's state.
  # @param instance [.]
  #   Any instance.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is an Observable type, it is an
  #   Observer's subject, and its state changed. False otherwise.
  def self.changed(instance = nil)
  end

  # self.notify(instance = nil).
  # @description
  #   Notifies the appropriate Observer kind an instance's state changed.
  # @param instance [.]
  #   An Observable instance.
  # @return [NilClass]
  #   nil.
  def self.notify(instance = nil)
  end

  # self.kind_observer(instance = nil).
  # @description
  #   Gets the corresponding type's observer.
  # @param instance [.]
  #   Any instance.
  # @return [.]
  #   The argument's corresponding observer identifier.
  def self.kind_observer(instance = nil)
  end

  # Private class methods.
  private_class_method :new
  private_class_method :kind_observer

end
