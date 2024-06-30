rgs = {
  rg1 = {
    name     = "rm_rgs1"
    location = "Central India"
  }
}
vnets = {
  vnet1 = {
    name                = "rm_vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "rm_rgs1"
  }
}
subnets = {
  sub1 = {
    name                 = "rm-formtend"
    resource_group_name  = "rm_rgs1"
    virtual_network_name = "rm_vnet"
    address_prefixes     = ["10.0.2.0/24"]
  },
  sub2 = {
    name                 = "rm-backend"
    resource_group_name  = "rm_rgs1"
    virtual_network_name = "rm_vnet"
    address_prefixes     = ["10.0.3.0/24"]
  },
  sub3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rm_rgs1"
    virtual_network_name = "rm_vnet"
    address_prefixes     = ["192.168.1.224/27"]
  },
}

nics = {
  nics1 = {
    name                 = "rm_nic"
    location             = "Central India"
    resource_group_name  = "rm_rgs1"
    subnet_name          = "rm_subnet"
    virtual_network_name = "rm_vnet"
    pip_name             = "rm_pip"
  }
}
nsgs = {
  nsg1 = {
    name                = "rm_nsg"
    location            = "Central India"
    resource_group_name = "rm_rgs1"
  }
}

nsgas = {
  nsga1 = {
    name                 = "rm_nsgas"
    subnet_name          = "rm_subnet"
    virtual_network_name = "rm_vnet"
    resource_group_name  = "rm_rgs1"
    nsg_name             = "rm_nsg"

  }
}
vms = {
  vm1 = {
    name                = "rm_vm"
    resource_group_name = "rm_rgs1"
    location            = "Central India"
    admin_username      = "adminrm"
    admin_password      = "adminrm@1234"
    nic_name            = "rm_nic"
  }
}

pips = {
  pips1 = {
    name                = "rm_pip"
    location            = "Central India"
    resource_group_name = "rm_rgs1"
  }
}
azbationhost = {
  abh = {
    name                 = "rm_abh"
    location             = "Central India"
    resource_group_name  = "rm_rgs1"
    pip_name             = "rm_pip"
    virtual_network_name = "rm_vnet"
  }
}
lbs = {
  lb1 = {
    name                = "rm_lbs1"
    location            = "Central India"
    resource_group_name = "rm_rgs1"
    pip_name            = "rm_pip"
  }
}
kvs = {
  kv = {
    name                = "rmkv1"
    location            = "Central India"
    resource_group_name = "rm_rgs1"

  }
}
sas = {
  sa1 = {
    name                     = "rmsa11"
    resource_group_name      = "rm_rgs1"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
cas = {
  ca = {
    name                  = "rmca11"
    storage_account_name  = "rmsa11"
    container_access_type = "private"
  }
}
