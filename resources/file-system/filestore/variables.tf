/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "deployment_name" {
  description = "Name of the HPC deployment, used as name of the filestore instace if no name is specified."
  type        = string
}

variable "zone" {
  description = "The name of the Filestore zone of the instance."
  type        = string
}

variable "network_name" {
  description = "The name of the GCE VPC network to which the instance is connected."
  type        = string
}

variable "name" {
  description = "The resource name of the instance."
  type        = string
  default     = null
}

variable "filestore_share_name" {
  description = "Name of the file system share on the instance."
  type        = string
  default     = "nfsshare"
}

variable "local_mount" {
  description = "Mountpoint for this filestore instance"
  type        = string
  default     = "/shared"
}

variable "size_gb" {
  description = "Storage size gb"
  type        = number
  default     = 2660
}

variable "filestore_tier" {
  description = "The service tier of the instance."
  type        = string
  default     = "PREMIUM"
}

variable "labels" {
  description = "Labels to add to the filestore instance. List key, value pairs."
  type        = any
}
