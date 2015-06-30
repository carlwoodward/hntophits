
module HNTools

  extend self

  def hostname
    `uname -n`.chomp
  end

  def email msg, hostname=hostname()
    if hostname =~ /survivor/
      ubuntu_email msg
    else
      mac_email msg
    end
  end

  def ubuntu_email msg
    system("mailx -t 'bruce.woodward@gmail.com' -s \"#{msg}\" < /dev/null")
  end

  def mac_email msg
    system("mailx -s \"#{msg}\" 'bruce.woodward@gmail.com' < /dev/null")
  end
end
