provider "ibm" {
  version = ">= 0.17.0"
    #softlayer_username = "${var.sl_username}"
    #softlayer_api_key = "${var.sl_api_key}"
}
module "cluster" {
  source  = "git::https://github.com/amblerman/starterlibrary.git//IBM_Cloud/modules/ibm_cloud_kubernetes_cluster"
  org = "${var.org}"
  space = "${var.space}" 
  cluster_name = "${var.cluster_name}" 
  region = "${var.region}" 
  datacenter = "${var.datacenter}" 
  num_workers = "${var.num_workers}"
  machine_type = "${var.machine_type}" 
  isolation = "${var.isolation}" 
  private_vlan_id = "${var.private_vlan_id}" 
  public_vlan_id = "${var.public_vlan_id}" 
  subnet_id = "${var.subnet_id}" 
  resource_group_name = "${var.resource_group_name}" 
  kube_version = "${var.kube_version}" 
}

