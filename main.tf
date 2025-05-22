terraform {
  required_providers {
    render = {
      source  = "jakejarvis/render"
      version = "0.6.0"
    }
  }
}

provider "render" {
  api_key = "rnd_fIg8hPjQTy3NjAqHdqRGKCbFVXr4"
}

resource "render_service" "springboot" {
  name        = "trotot_terraform_sv"
  type        = "web_service"
  repo        = "https://github.com/NguyenTongAnhQuan443/trotot_terraform_sv"
  branch      = "main"
  build_command = "./gradlew build"
  start_command = "java -jar build/libs/your-app.jar"
  env         = "java"

  # Tuỳ chọn thêm env, auto deploy, v.v.
  auto_deploy = true
  region      = "oregon"
}
