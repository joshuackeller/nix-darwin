{ ... }:
{
  # Configure power settings on system activation
  system.activationScripts.postActivation.text = ''
    # Prevent system, disk, and idle sleep on AC power
    sudo pmset -c sleep 0
    sudo pmset -c disksleep 0
    sudo pmset -c disablesleep 1

    # Turn off display after 10 minutes to reduce heat and save power
    sudo pmset -c displaysleep 10

    # Keep machine running when the lid is closed while connected to power
    sudo pmset -a lidwake 1
  '';
}
