{ pkgs, username, ... }:
{
  programs.dconf.enable = true;

  users.users.${username}.extraGroups = [ "libvirtd" ];

  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    win-virtio
    win-spice
    adwaita-icon-theme
  ];

  virtualisation = {
    vswitch.enable = true; # PURGE
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
    
    podman = {
      enable = true;
      dockerCompat = true;
    };
  };

  services.spice-vdagentd.enable = true;

}
