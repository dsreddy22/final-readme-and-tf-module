# Azure Web Apps Deployment

Web App Deployment Using Terraform

## Table of Contents

- [Overview](#overview)
- [Terraform Modules](#terraform-modules)
- [Testing](#testing)
- [Examples](#examples)
- [Internal Security Policies and Guidelines](#Internal-Security-Policies-and-Guidelines)

### Overview

#### Azure Service Reference

##### Azure Web Apps

Azure Web Apps enables you to build and host web applications in the programming language of your choice without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux.
* [Web App Reference](https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview)

---
#### Features:

|Terraform Module Feature|Terraform Module Path|
|--------------------------------|----------------|
|Create Web Apps|`<module>/modules/web_apps`|

### Terraform Modules

#### Module Properties:
The following properties are available:

## Inputs
### ase_service_plan
|Property| Description| Default Value|Example Values|
|---|---|---|---|
|name|Name of web_apps to created under service plan/environment|Optional|`web_app-random_number`|
|app_service_plan_id|ID of App Service plan to deploy web_apps||`default`|
|rg_name|Name of the resource group to create web_apps|Required|`default_rg`|
|web_app_location|Location for web apps|`Central US`|`Central US`|

**NOTE:** A blank space in the "default" column indicates no default is available. 

<!--
#### Module Structure:

The module structure has been updated to reflect HashiCorp's latest recommendation. This includes moving Terraform files to the root directory of the module. Nested modules are placed under the ```modules/``` subdirectory as shown above for `feature1`. Learn more [here](https://www.terraform.io/docs/modules/create.html).
-->

#### Module Outputs:

### azure_web_apps
|Output|Description|
|------------|-------------------|
|web_app1_name|Name of web_app1|
|web_app2_name|Name of web_app2|
|web_app3_name|Name of web_app3|


---

### Testing:

* Ensure that ruby and bundler have been installed, install the required gems and run the tests
```
> ruby --version
> bundle install
> rspec
```

The tests should all pass.

---

### Examples:

Examples are included in this repository, for more information see the examples folder.

---


### Internal Security Policies and Guidelines:

All contributions to the CommercialCloud repositories must follow the guidelines outlined in the following guides:
* [Commercial Cloud Terraform Developers Guide](https://github.optum.com/CommercialCloud-EAC/welcome/tree/master/DEVELOPER_GUIDE.md)
* [Contributing](https://github.optum.com/CommercialCloud-EAC/welcome/tree/master/CONTRIBUTING.md)
* [Contributor Code of Conduct](https://github.optum.com/CommercialCloud-EAC/welcome/tree/master/CODE_OF_CONDUCT.md)
