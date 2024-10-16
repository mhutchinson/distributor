/**
 * Copyright 2024 Google LLC
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

output "artifact_registry_id" {
  description = "The ID of the created artifact registry for distributor docker images"
  value       = google_artifact_registry_repository.distributor_docker.id
}

output "artifact_registry_name" {
  description = "The name of the created artifact registry for distributor docker images"
  value       = google_artifact_registry_repository.distributor_docker.name
}

output "cloudbuild_trigger_id" {
  description = "The ID of the created trigger for building images"
  value       = google_cloudbuild_trigger.distributor_docker.id
}

output "docker_image_latest" {
  description = "The address of the latest docker image that will be built"
  value       = local.docker_address
}
