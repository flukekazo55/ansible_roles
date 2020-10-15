resource "proxmox_vm_qemu" "engine4" {
  name              = "terraform-test-fluke"
  target_node       = "pve-uat2"
  vmid              = 1004
  clone             = "ubuntu-1804-cloudinit"
  full_clone        = true
  memory            = 4096
  cores             = 4
  sockets           = 1

  disk {
    id              = 0
    size            = 40
    type            = "scsi"
    storage         = "external"
    storage_type    = "nfs"
    iothread        = false
  }

  network {
    id              = 0
    model           = "virtio"
    bridge          = "vmbr0"
  }

  # Cloud Init Settings
  ipconfig0         = "ip=192.168.60.41/24,gw=192.168.60.254"
  ciuser            = "ubuntu"
  cipassword        = "password"
  
  sshkeys = <<EOF
  ${var.ssh_key}
  EOF

}