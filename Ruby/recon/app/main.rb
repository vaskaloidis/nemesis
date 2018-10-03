class Main < Thor

  desc "execute", "execute recon"

  option :from

  def hello(name)
    puts "from: #{options[:from]}" if options[:from]
    puts "Hello #{name}"
  end

  def run
#
  end
end
