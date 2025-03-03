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
class apim::params {

  $product = 'wso2am'
  $product_version = '2.6.0'
  $apim_package = 'wso2am-2.6.0.zip'
  $carbon_home="/var/lib/jenkins/workspace/${product}-${product_version}/${module_name}/"
  $start_script_template="bin/wso2server.sh"
  $mysql_connector="mysql-connector-java-5.1.41-bin.jar"
  $puppet_modules_path ="/var/lib/jenkins/workspace/${product}-${product_version}/configs/modules"

  $jvmxms = '256m'
  $jvmxmx = '1024m'
  $try_count = 5
  $try_sleep = 5
  $hostname = 'ALB_DNS_NAME'
  $mgt_hostname = 'ALB_DNS_NAME'

  $template_list = [
    'repository/conf/api-manager.xml',
    'repository/conf/datasources/master-datasources.xml',
    'repository/conf/carbon.xml',
    'repository/conf/user-mgt.xml',
    'repository/conf/axis2/axis2.xml',
  ]

    # ----- api-manager.xml config params -----
    $auth_manager_url = 'https://localhost:${mgt.transport.https.port}${carbon.context}services/'
    $auth_manager_username = '${admin.username}'
    $auth_manager_password = '${admin.password}'
    $auth_manager_check_permission_remotely = 'false'

    $api_gateway_url = 'https://localhost:${mgt.transport.https.port}${carbon.context}services/'
    $api_gateway_username = '${admin.username}'
    $api_gateway_password = '${admin.password}'
    $api_gateway_endpoint = 'http://ALB_DNS_NAME:8280,https://ALB_DNS_NAME:8243'
    $api_gateway_ws_endpoint = 'ws://${carbon.local.ip}:9099'

    $analytics_enable = 'false'
    $stream_processor_url = '{tcp://localhost:7612}'
    $stream_processor_username = '${admin.username}'
    $stream_processor_password = '${admin.password}'
    $stream_processor_restapi_url = 'https://localhost:7444'
    $stream_processor_restapi_username = '${admin.username}'
    $stream_processor_restapi_password = '${admin.password}'

    $api_store_url = 'https://ALB_DNS_NAME/store'
    $api_store_server_url = 'https://localhost:${mgt.transport.https.port}${carbon.context}services/'
    $api_store_username = '${admin.username}'
    $api_store_password = '${admin.password}'
    $api_publisher_url = 'https://ALB_DNS_NAME/publisher'

    # ----- Master-datasources config params -----
    $wso2carbon_db_url = 'jdbc:h2:./repository/database/WSO2CARBON_DB;DB_CLOSE_ON_EXIT=FALSE;LOCK_TIMEOUT=60000'
    $wso2carbon_db_username = 'CF_DB_USERNAME'
    $wso2carbon_db_password = 'CF_DB_PASSWORD'
    $wso2carbon_db_driver = 'org.h2.Driver'
    $wso2carbon_db_validation_query = 'SELECT 1'

    $wso2am_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2AM_DB?autoReconnect=true&amp;useSSL=false'
    $wso2am_db_username = 'CF_DB_USERNAME'
    $wso2am_db_password = 'CF_DB_PASSWORD'
    $wso2am_db_driver = 'com.mysql.jdbc.Driver'
    $wso2am_db_validation_query = 'SELECT 1'

    $wso2reg_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2AM_REG_DB?autoReconnect=true&amp;useSSL=false'
    $wso2reg_db_username = 'CF_DB_USERNAME'
    $wso2reg_db_password = 'CF_DB_PASSWORD'
    $wso2reg_db_driver = 'com.mysql.jdbc.Driver'
    $wso2reg_db_validation_query = 'SELECT 1'

    $wso2user_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2AM_USER_DB?autoReconnect=true&amp;useSSL=false'
    $wso2user_db_username = 'CF_DB_USERNAME'
    $wso2user_db_password = 'CF_DB_PASSWORD'
    $wso2user_db_driver = 'com.mysql.jdbc.Driver'
    $wso2user_db_validation_query = 'SELECT 1'

    $stat_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2AM_STATS_DB?autoReconnect=true&amp;useSSL=false'
    $stat_db_username = 'CF_DB_USERNAME'
    $stat_db_password = 'CF_DB_PASSWORD'
    $stat_db_driver = 'com.mysql.jdbc.Driver'
    $stat_db_validation_query = 'SELECT 1'

    $mb_store_db_url = 'jdbc:mysql://RDS_DNS_NAME:3306/WSO2MB_DB?autoReconnect=true&amp;useSSL=false'
    $mb_store_db_username = 'CF_DB_USERNAME'
    $mb_store_db_password = 'CF_DB_PASSWORD'
    $mb_store_driver = 'com.mysql.jdbc.Driver'
    $mb_store_db_validation_query = 'SELECT 1'

    # ----- Carbon.xml config params -----
    $ports_offset = 0
    $key_store = '${carbon.home}/repository/resources/security/wso2carbon.jks'
    $key_store_type = 'JKS'
    $key_store_password = 'wso2carbon'
    $key_store_key_alias = 'wso2carbon'
    $key_store_key_password = 'wso2carbon'
    $internal_key_store = '${carbon.home}/repository/resources/security/wso2carbon.jks'
    $internal_key_store_type = 'JKS'
    $internal_key_store_password = 'wso2carbon'
    $internal_key_store_key_alias = 'wso2carbon'
    $internal_key_store_key_password = 'wso2carbon'
    $trust_store = '${carbon.home}/repository/resources/security/client-truststore.jks'
    $trust_store_type = 'JKS'
    $trust_store_password = 'wso2carbon'

    # ----- user-mgt.xml config params -----
    $admin_username = 'admin'
    $admin_password = 'admin'

  # ----- axis2.xml config params -----
  $clustering_enabled = 'false'
  $clustering_membership_scheme = 'multicast'
}
