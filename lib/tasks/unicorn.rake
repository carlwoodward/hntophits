namespace :unicorn do

  def unicorn_pid_file
    "#{Rails.root}/pids/unicorn.pid"
  end

  def unicorn_pid
    first_line unicorn_pid_file
  end

  def first_line filename
    File.open(filename).readline.chomp.to_i
  end

  def unicorn_not_running
    return true if not File.exists?(unicorn_pid_file)
    Process.kill(0, unicorn_pid)
    return false
  rescue Errno::ESRCH, Errno::EPERM, RangeError
    return true
  end

  def unicorn_is_running
    !unicorn_not_running
  end

  def show_unicorn_status
    if unicorn_is_running
      system "ps -ef | grep #{unicorn_pid} | grep -v grep"
    else
      puts "unicorn isn't running"
    end
  end

  def start_unicorn
    `cd #{Rails.root} && bundle exec unicorn_rails -c config/unicorn.rb -E production -D`
  end

  def stop_unicorn
    `kill #{unicorn_pid}`
  end

  desc 'start Unicorn production server daemonized (config file: config/unicorn.rb)'
  task :start => :environment do
    if unicorn_not_running
      start_unicorn
      show_unicorn_status
    else
      puts "unicorn already running: pid #{unicorn_pid}"
    end
  end

  desc 'stop Unicorn production server'
  task :stop => :environment do
    if unicorn_is_running
      stop_unicorn
    else
      puts "unicorn isn't running"
    end
  end

  desc 'status of Unicorn production server'
  task :status => :environment do
    show_unicorn_status
  end

  desc 'executes `rake unicorn:stop; rake unicorn:start`'
  task :restart => :environment do
    stop_unicorn if unicorn_is_running
    Kernel.sleep 0.3 while unicorn_is_running
    start_unicorn
    show_unicorn_status
  end

  desc 'executes a "graceful_stop" (waits for workers to finish their current request before finishing)'
  task :graceful_stop => :environment do
    `kill -s QUIT #{unicorn_pid}`
  end

  desc 'reexecute the running binary'
  task :reload => :environment do
    `kill -s USR2 #{unicorn_pid}`
  end

  desc 'reloads config file and gracefully restart all workers, calling a Gem.refresh in order to reload newly installed gems'
  task :graceful_restart => :environment do
    `kill -s HUP #{unicorn_pid}`
  end

  desc 'gracefully stops workers but keep the master running'
  task :graceful_restart => :environment do
    `kill -s WINCH #{unicorn_pid}`
  end
end
