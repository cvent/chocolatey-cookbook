actions :install, :remove, :upgrade

attribute :package, kind_of: String, name_attribute: true
attribute :source, kind_of: [String, nil], default: nil
attribute :version, kind_of: [String]
attribute :args, kind_of: [String, nil], default: nil
attribute :options, kind_of: Hash, default: {}

def initialize(*args)
  super
  @action = :install
end

attr_accessor :exists, :upgradeable
