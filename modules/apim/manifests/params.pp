# ----------------------------------------------------------------------------
#  Copyright (c) 2019 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------

# Claas apim::params
# This class includes all the necessary parameters.
class apim::params inherits apim_common::params {

  $product = 'wso2am'
  $product_version = '2.5.0'
  $service_name = "${product}"
  $mediation_flow_statistics = 'false'
  $broker_elb_dns_name = 'localhost'
  $apim_package = 'wso2am-2.5.0.zip'
  $carbon_home="/var/lib/jenkins/workspace/wso2am-2.5.0/${module_name}"
  $start_script_template="bin/wso2server.sh"
  $mysql_connector="mysql-connector-java-5.1.41-bin.jar"
  $puppet_modules_path ="/var/lib/jenkins/workspace/wso2am-2.5.0/configs/modules"

  $start_script_template = 'bin/wso2server.sh'
  $jvmxms = '256m'
  $jvmxmx = '1024m'

  $template_list = [
    'repository/conf/api-manager.xml',
    'repository/conf/datasources/master-datasources.xml',
    'repository/conf/carbon.xml',
    'repository/conf/user-mgt.xml',
    'repository/conf/axis2/axis2.xml',
  ]

  # ----- Carbon.xml config params -----
  /*
     Host name or IP address of the machine hosting this server
     e.g. www.wso2.org, 192.168.1.10
     This is will become part of the End Point Reference of the
     services deployed on this server instance.
  */
  $hostname = 'localhost'
  $mgt_hostname = 'localhost'

  # ----- axis2.xml config params -----
  $clustering_enabled = 'false'
  $clustering_membership_scheme = 'multicast'
}
